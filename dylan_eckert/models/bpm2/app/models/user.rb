class User < ApplicationRecord
  has_many :owners
  has_many :blogs, through: :owners
  has_many :posts
  has_many :messages
  has_many :comments, as: :commentable


  validates :fname, :lname, :email, presence: true
end
