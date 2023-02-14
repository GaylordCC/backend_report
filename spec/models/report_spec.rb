require 'rails_helper'

RSpec.describe Report, type: :model do

  describe "validation" do
    it "validation presence of require fields" do
      should validate_presence_of(:report_title)
      should validate_presence_of(:report_subtitle)
      should validate_presence_of(:connection_point)
      should validate_presence_of(:initial_day)
      should validate_presence_of(:final_day)
      should validate_presence_of(:total_days_service)
      should validate_presence_of(:author)
      should validate_presence_of(:reviewer)
      should validate_presence_of(:client_responsible)
      should validate_presence_of(:equipment)
      should validate_presence_of(:equipment_model)
      should validate_presence_of(:working_voltage)
      should validate_presence_of(:connection_type)
      should validate_presence_of(:phase_number)
      should validate_presence_of(:total_power)
      should validate_presence_of(:city)
      should validate_presence_of(:department)
      should validate_presence_of(:year)
      should validate_presence_of(:visit_id)
    end
  end
end
