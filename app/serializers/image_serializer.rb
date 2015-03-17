class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :votes
  belongs_to :post
end
