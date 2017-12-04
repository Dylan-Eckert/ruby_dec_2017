class User < ActiveRecord::Base
	has_many :homies, class_name: 'Homie'
	has_many :friends, through: :homies, source: :receiver

end
