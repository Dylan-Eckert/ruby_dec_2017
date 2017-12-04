class Blog < ActiveRecord::Base
	has_many :posts

	#validations
	validates :name, :description, presence: true
end
