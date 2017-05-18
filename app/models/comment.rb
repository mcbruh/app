class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.upvotes = 0
    self.downvotes = 0
  end

end
