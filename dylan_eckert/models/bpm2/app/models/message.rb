class Message < ApplicationRecord
  belongs_to :post, dependent: :destroy
  belongs_to :user, dependent: :destroy
  has_many :comments, as: :commentable

  validates :author, :msg, presence: true
end
