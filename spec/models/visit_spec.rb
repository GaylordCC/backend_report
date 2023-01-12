require "rails_helper"

RSpec.describe Visit, type: :model do
    describe "validation" do
        it "validation presence of require fields" do
            should validate_presence_of(:visit_date)
            should validate_presence_of(:profesion)
            should validate_presence_of(:coordinator)
            should validate_presence_of(:company_id)
            should validate_presence_of(:number_day)
            should validate_presence_of(:equimen_description)
            should validate_presence_of(:contact_email)
            should validate_presence_of(:phase)
            should validate_presence_of(:initial_day)
            should validate_presence_of(:final_day)
        end
    end
end