class SubscriberSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :status
end
