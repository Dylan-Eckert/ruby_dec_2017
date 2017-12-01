class User < ActiveRecord::Base
	has_many :homies, class_name: 'Homie'
	has_many :friends, through: :homies, source: :receiver

	# has_many :received_friends, class_name: 'Homies', foreign_key: 'receiver_id'

end
