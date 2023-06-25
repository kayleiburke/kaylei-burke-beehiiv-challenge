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
    render json: {message: "Subscriber created successfully"}, formats: :json, status: :created
  end

  def update
    render json: {message: "Subscriber updated successfully"}, formats: :json, status: :ok
  end
end
