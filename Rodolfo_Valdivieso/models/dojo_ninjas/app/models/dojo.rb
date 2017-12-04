class Dojo < ActiveRecord::Base
	has_many :ninjas, dependent: :destroy

	validates :name, :city, presence: true, length: { in: 2..50 }
	validates :state, presence: true, length: { in: 2..2 }

	# before_destroy :destroy_ninjas
	# private 
	#   def destroy_ninjas
	#   	self.ninjas.destroy_all
	#   end


end
