class Post < ApplicationRecord
  belongs_to :user
  has_many :posts

    def set_defaults
    self.upvotes = 0
    self.downvotes = 0
  end

end
