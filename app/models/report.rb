class Report < ApplicationRecord
  belongs_to :visit
  has_many :detail_reports
  has_one :statistical_calculation
  
  # Attachement files
  has_one_attached :company_photo_file
  has_one_attached :connection_point_photo_file

  validates :report_title, presence: true
  validates :report_subtitle, presence: true
  validates :connection_point, presence: true
  validates :initial_day, presence: true
  validates :final_day, presence: true
  validates :total_days_service, presence: true
  validates :author, presence: true
  validates :reviewer, presence: true
  validates :client_responsible, presence: true
  validates :equipment, presence: true
  validates :equipment_model, presence: true
  validates :working_voltage, presence: true
  validates :connection_type, presence: true
  validates :phase_number, presence: true
  validates :total_power, presence: true
  validates :city, presence: true
  validates :department, presence: true
  validates :year, presence: true
  validates :visit_id, presence: true
end
