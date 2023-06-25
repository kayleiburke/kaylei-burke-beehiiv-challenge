# frozen_string_literal: true

class SubscribersController < ApplicationController
  include PaginationMethods

  ##
  # GET /api/subscribers
  def index
    subscribers = Subscriber.all

    total_records = subscribers.count
    limited_subscribers = subscribers[offset..limit]

    serialized_subscribers = ActiveModelSerializers::SerializableResource.new(limited_subscribers, each_serializer: SubscriberSerializer)
    render json: { subscribers: serialized_subscribers, pagination: pagination(total_records) }, formats: :json
  end

  def create
    subscriber = Subscriber.new(subscriber_params)

    if subscriber.save
      render json: { message: "Subscriber created successfully" }, formats: :json, status: :created
    else
      render json: { errors: subscriber.errors.full_messages }, formats: :json, status: :unprocessable_entity
    end
  end

  def update
    render json: {message: "Subscriber updated successfully"}, formats: :json, status: :ok
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email)
  end
end
