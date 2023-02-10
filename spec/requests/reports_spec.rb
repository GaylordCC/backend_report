require "rails_helper";
require "faker";

RSpec.describe "Reports", type: :request do
    describe "GET / reports" do
        it "should return OK, with no data in the DB" do
            get '/reports'
            payload = JSON.parse(response.body)
            expect(payload).to be_empty
            expect(response).to have_http_status(200)
        end
    end

    describe "REPORT / reports" do
        let!(:report)   { create(:report) }

        it "should create a report" do
            req_payload = {
                report: {
                    report_title: "report_title",
                    report_subtitle: "report_subtitle",
                    connection_point: "connection_point",
                    initial_day: DateTime.now,
                    final_day: DateTime.now,
                    total_days_service: "total_days_service",
                    author: "author",
                    reviewer: "reviewer",
                    client_responsible: "client_responsible",
                    equipment: "equipment",
                    equipment_model: "equipment_model",
                    working_voltage: "working_voltage",
                    connection_type: "connection_type",
                    phase_number: "phase_number",
                    total_power: "total_power",
                    company_photo: "company_photo",
                    connection_point_photo: "connection_point_photo",
                    city: "city",
                    department: "department",
                    department: "department",
                    year: DateTime.now,
                }
            }

            #POST HTTP
            post "/reports", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload).not_to be_nil
            expect(response).to have_http_status(:create)
        end


        it "should return error message on incomplete report" do
            req_payload = {
                report: {
                    total_days_service: "total_days_service",
                    author: "author",
                    reviewer: "reviewer",
                    client_responsible: "client_responsible",
                    equipment: "equipment",
                    equipment_model: "equipment_model",
                    working_voltage: "working_voltage",
                    connection_type: "connection_type",
                    phase_number: "phase_number",
                    total_power: "total_power",
                    company_photo: "company_photo",
                }
            } 

            #POST HTTP
            post "/reports", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["error"]).to_not be_empty
            expect(response).to have_http_status(:unprocessable_entity)
        end

    end



end