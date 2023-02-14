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

    describe "search reports" do
        let!(:reports) { create_list(:report, 10) }

        it "should return all the registre reports" do
            get '/reports'
            payload = JSON.parse(response.body)
            expect(payload.size).to eq(reports.size)
            expect(response).to have_http_status(200)
        end
    end

    describe "REPORT / reports" do
        let!(:visit) { create(:visit) }
        let!(:report)   { create(:report) }

        it "should create a report" do
            req_payload = {
                report: {
                    visit_id: visit.id,
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
                    city: "city",
                    department: "department",
                    year: DateTime.now,
                }
            }

            #POST HTTP
            post "/reports", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload).not_to be_nil
            expect(response).to have_http_status(:created)
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

    describe "PUT / reports/{id}" do
        let!(:visit) { create(:visit) }
        let!(:iten) { create(:report) }

        it "should update a report" do
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
                }
            }

            #PUT HTTP
            put "/reports/#{iten.id}", params:req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["id"]).to eq(iten.id)
            expect(response).to have_http_status(:ok)

        end

        it "should return error message on invalid report" do
            req_payload = {
                report: {
                    total_days_service: nil,
                    author: nil,
                    reviewer: nil,
                    client_responsible: nil,
                    equipment: nil,
                    equipment_model: nil,
                    working_voltage: nil,
                    connection_type: nil,
                    phase_number: nil,
                    total_power: nil,
                }
            }

            #PUT HTTP
            put "/reports/#{iten.id}", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["error"]).to_not be_empty
            expect(response).to have_http_status(:unprocessable_entity)
        end
    end

    describe "DELETE /reports/{id}" do
        let!(:company) { create(:company) }
        let!(:iten) { create(:report) }

        it "should delete a report" do
            req_payload = {
                report: {
                    total_days_service: nil,
                    author: nil,
                    reviewer: nil,
                    client_responsible: nil,
                    equipment: nil,
                    equipment_model: nil,
                    working_voltage: nil,
                    connection_type: nil,
                    phase_number: nil,
                    total_power: nil, 
                }
            }
            
            # DESTROY HTTP
            delete "/reports/#{iten.id}", params: req_payload
            expect(response["id"]).to be nil
            expect(response).to have_http_status(204)
        end

        it "should return error on invalid report delete process" do
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
                }
            }

            # DESTROY HTTP
            delete "/reports/#{iten.id}", params: req_payload
            expect(response["error"]).to be_nil
        end
    end
end