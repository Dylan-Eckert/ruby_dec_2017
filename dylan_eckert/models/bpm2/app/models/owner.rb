class Owner < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :blog, dependent: :destroy
end
