class PostSerializer < ActiveModel::Serializer
  has_many :images
  attributes :id, :message, :created_at, :comments
end
