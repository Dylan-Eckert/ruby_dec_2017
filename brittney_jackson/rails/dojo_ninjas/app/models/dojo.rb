class Dojo < ActiveRecord::Base
	has_many :ninjas

	#validations
	validates :name, :city, presence: true
	validates :state, presence: true, length: { is: 2 }
end
