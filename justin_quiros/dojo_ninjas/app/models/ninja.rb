class Ninja < ActiveRecord::Base
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  	belongs_to :dojo

  	def name
  		self.first_name
  	end
end
