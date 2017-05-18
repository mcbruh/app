class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.upvotes = 0
    self.downvotes = 0
  end
end
