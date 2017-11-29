class Dojo < ActiveRecord::Base
	validates :name, :city, :state, presence: true, length: { in: 2..40 }
	has_many :ninjas, :dependent => :nullify
end
