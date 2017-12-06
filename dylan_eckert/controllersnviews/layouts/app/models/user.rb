class User < ApplicationRecord
  validates :fname, :lname, :language, presence: :true
end
