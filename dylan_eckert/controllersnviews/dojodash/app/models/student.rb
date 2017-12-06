class Student < ApplicationRecord
  belongs_to :dojo
  validates :fname, :lname, :email, presence: :true

  def cohort
    date_start = self.created_at.beginning_of_day
    date_end = self.created_at.end_of_day

    return Student
      .where(dojo: self.dojo)
      .where(created_at: date_start..date_end)
      .where.not(id: self.id)
  end
end
