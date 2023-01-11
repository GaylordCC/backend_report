require 'rails_helper'

RSpec.describe Company, type: :model do
    describe "validation" do
        it "validation presence of required fields" do
            should validate_presence_of(:name)
            should validate_presence_of(:city)
            should validate_presence_of(:identification)
            should validate_presence_of(:adress)
            should validate_presence_of(:email)
            should validate_presence_of(:phone)
        end
    end
end