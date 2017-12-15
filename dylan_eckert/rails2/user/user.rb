class User < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  before_save :email_lowercase
  # line above says that before saving the user to the database to run the email_lowercase method

  def email_lowercase
    email.downcase!
    # the built in method for lowercasing something is .downcase!
  end
end
