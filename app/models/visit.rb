class Visit < ApplicationRecord
  belongs_to :company
  has_many :reports

  #validates
  validates :visit_date, presence: true
  validates :profesion, presence: true
  validates :coordinator, presence: true
  validates :company_id, presence: true
  validates :number_day, presence: true
  validates :equimen_description, presence: true
  validates :contact_email, presence: true
  validates :phase, presence: true
  validates :initial_day, presence: true
  validates :final_day, presence: true
end

