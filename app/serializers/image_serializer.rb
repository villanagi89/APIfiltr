class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :votes, :votecount
  belongs_to :post
end
