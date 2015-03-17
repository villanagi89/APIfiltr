class Image < ActiveRecord::Base
belongs_to :post

has_reputation :votes, source: :user, aggregated_by: :sum

end
