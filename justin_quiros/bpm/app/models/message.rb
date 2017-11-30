class Message < ActiveRecord::Base

  belongs_to :post
  belongs_to :user

  validates :author, presence: true 
  validates :message, length: { in: 15..1000 } 
end


# Query I used to get messages that were on the last blog
# I connected the tables from the middle out
# Blog -> Post -> Message
# Post.joins(:messages).joins(:blog).where(blog: Blog.last)