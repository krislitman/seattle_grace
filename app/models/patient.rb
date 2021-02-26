class Patient < ApplicationRecord
  validates_presence_of :name,
                        :age
  has_many :doctor_patients
  has_many :doctors, through: :doctor_patients

  def self.sort_by_age
    order(age: :desc)
  end
end
