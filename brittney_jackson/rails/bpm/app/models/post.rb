class Post < ActiveRecord::Base
	belongs_to :blog
	has_many :messages, dependent: :destroy

	#validations
	validates :title, :content, presence: true
	validates :title, length: { minimum: 7}
end
