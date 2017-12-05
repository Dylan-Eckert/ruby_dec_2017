class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :blog, dependent: :destroy
  has_many :messages
  has_many :comments, as: :commentable

  validates :title, :content, presence: true
end
