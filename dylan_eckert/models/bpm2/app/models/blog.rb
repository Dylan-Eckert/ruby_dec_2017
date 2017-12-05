class Blog < ApplicationRecord
  has_many :owners
  has_many :users, through: :owners
  has_many :posts
  has_many :comments, as: :commentable

  validates :name, :desc, presence: true
end
