class User < ActiveRecord::Base
	has_many :friendships, foreign_key: 'user_id'
	has_many :friends, through: :friendships, source: :friend

	has_many :received_friendships, class_name: 'Friendship' , foreign_key: 'friend_id'
	has_many :friended_by, through: :received_friendships, source: :user
end
