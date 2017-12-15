class User < ApplicationRecord
  has_secure_password
  has_many :events, dependent: :destroy
  has_many :attendees
  has_many :events_attending, through: :attendees, source: :event



  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :fname, :lname, :location, :state, presence: :true

  before_save :input_format
  # line above says that before saving the user to the database to run the email_lowercase method

  def input_format
    self.email.downcase!
    self.fname.downcase!
    self.lname.downcase!
    self.location = self.location.titleize
    self.state.upcase!
    # the built in method for lowercasing something is .downcase!
    # the built in method for caps locking something is .upcase!
    # the built in method for capitalizing every new word's first letter only (ex: This Is Titleize) something is .titleize!
  end
end
