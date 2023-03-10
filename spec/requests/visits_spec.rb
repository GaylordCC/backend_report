require "rails_helper"
require "faker"

RSpec.describe "Visits", type: :request do
    describe "GET /visits" do

        it "should return OK, with no data in DB" do
            get '/visits'
            payload = JSON.parse(response.body)
            expect(payload).to be_empty
            expect(response).to have_http_status(200)
        end

        describe "search visits" do
            let!(:visits) { create_list(:visit, 10) }

            it "should return all the registre visits" do
                get '/visits'
                payload = JSON.parse(response.body)
                expect(payload.size).to eq(visits.size)
                expect(response).to have_http_status(200)
            end
        end
    end
    
    describe " GET /visits/{id}" do
        let!(:visit) { create(:visit)}

        it "should return all the registred visits" do
            get "/visits/#{visit.id}"
            payload = JSON.parse(response.body)
            expect(payload). to_not be_empty
            expect(payload["id"]).to eq(visit.id)
            expect(payload["visit_date"].to_date.strftime('%F')).to eq(visit.visit_date.to_date.strftime('%F'))
            expect(payload["profesion"]).to eq(visit.profesion)
            expect(payload["coordinator"]).to eq(visit.coordinator)
            expect(payload["number_day"]).to eq(visit.number_day)
            expect(payload["equimen_description"]).to eq(visit.equimen_description)
            expect(payload["contact_email"]).to eq(visit.contact_email)
            expect(payload["phase"]).to eq(visit.phase)
            expect(payload["initial_day"].to_datetime.strftime("%-d/%-m/%y: %H:%M %Z")).to eq(visit.initial_day.to_datetime.strftime("%-d/%-m/%y: %H:%M %Z"))
            expect(payload["final_day"].to_datetime.strftime("%-d/%-m/%y: %H:%M %Z")).to eq(visit.final_day.to_datetime.strftime("%-d/%-m/%y: %H:%M %Z"))
            expect(response).to have_http_status(200)
        end

    end


    describe " VISIT /visits" do
        let!(:company) { create(:company) }
        let!(:visit) { create(:visit) }

        it "should create a visit" do
            req_payload = {
                visit: {
                    company_id: company.id,
                    visit_date: DateTime.now.to_date.strftime('%F'),
                    profesion: "profesion",
                    coordinator: "coordinator",
                    number_day: "number_day",
                    equimen_description: "equimen_description",
                    contact_email: "test@test.com",
                    phase: "phase",
                    initial_day: DateTime.now,
                    final_day: DateTime.now
                }
            }

            #POST HTTP
            post "/visits", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload).not_to be_nil
            expect(response).to have_http_status(:created)
        end


        it "should return error message on invalid visit" do
            req_payload = {
                visit: {
                    contact_email: "test@test.com",
                    phase: "phase",
                    initial_day: DateTime.now,
                    final_day: DateTime.now
                }
            }

            # POST HTTP
            post "/visits", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["error"]).to_not be_empty
            expect(response).to have_http_status(:unprocessable_entity)
        end
    end

    describe "PUT /visits/{id}" do
        let!(:company) { create(:company) }
        let!(:iten) { create(:visit) }

        it "should update a visit" do
            req_payload = {
                visit: {
                    contact_email: "test@test.com",
                    phase: "phase",
                    initial_day: DateTime.now,
                    final_day: DateTime.now 
                }
            }

            #PUT HTTP
            put "/visits/#{iten.id}", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["id"]).to eq(iten.id)
            expect(response).to have_http_status(:ok)
        end

        it "should return error message on invalid visit" do
            req_payload = {
                visit: {
                    contact_email: nil,
                    phase: nil,
                    initial_day: nil,
                    final_day: nil
                }
            }

            # PUT HTTP
            put "/visits/#{iten.id}", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["error"]).to_not be_empty
            expect(response).to have_http_status(:unprocessable_entity)
        end
    end
end