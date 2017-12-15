class Event < ApplicationRecord
  belongs_to :user
  has_many :attendees
  has_many :people_attending, through: :attendees, source: :user

  validates :name, :date, :location, :state, presence: :true
  validate :datecheck

  before_save :input_format
  # line above says that before saving the user to the database to run the email_lowercase method

  def datecheck
    if date.present? && date < Date.current
      errors.add(:date, "must be in the future")
    end
  end
  def input_format
    self.name = self.name.titleize
    self.location = self.location.titleize
    self.state.upcase!
    # the built in method for lowercasing something is .downcase!
    # the built in method for caps locking something is .upcase!
    # the built in method for capitalizing every new word's first letter only (ex: This Is Titleize) something is .titleize!
  end
end
