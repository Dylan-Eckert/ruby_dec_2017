class User < ApplicationRecord
  has_secure_password
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
  # the line above is there to allow for us so the query User.first.secrets will show all of the secrets the user created, not the secrets the user has liked

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  before_save :input_lowercase
  # line above says that before saving the user to the database to run the email_lowercase method

  def input_lowercase
    self.email.downcase!
    self.name.downcase!
    # the built in method for lowercasing something is .downcase!
  end
end
