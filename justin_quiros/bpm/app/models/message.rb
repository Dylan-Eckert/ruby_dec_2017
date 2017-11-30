class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, presence: true 
  validates :message, length: { in: 15..1000 } 
end
