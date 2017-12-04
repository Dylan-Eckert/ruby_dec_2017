class User < ActiveRecord::Base

  validates :firstname, :lastname, presence: true, length: { in: 2..20 }
  validates :email, presence: true
  validates :age, presence: true, numericality: {greater_than: 9, less_than: 151}

end
