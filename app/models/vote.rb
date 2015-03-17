class Vote < ActiveRecord::Base

  belongs_to :image

  before_save :add_vote

  def add_vote
    self.count = count + 1
  end

end
