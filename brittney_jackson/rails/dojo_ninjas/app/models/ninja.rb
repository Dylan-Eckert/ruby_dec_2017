class Ninja < ActiveRecord::Base
	belongs_to :dojo

	#validations
	validates :firstname, :lastname, presence: true
end
