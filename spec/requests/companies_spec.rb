require "rails_helper"
require "faker"

RSpec.describe "Companies", type: :request do
    describe "GET /companies" do

        it "should return OK, with no data in the DB" do
            get '/companies'
            payload = JSON.parse(response.body)
            expect(payload).to be_empty
            expect(response).to have_http_status(200)
        end

        describe "Search company" do
            let!(:prime) { create(:company, name: 'prime') }
            let!(:farma_capsula) { create(:company, name: 'farma capsula') }
            let!(:isa) { create(:company, name: 'isa') }

            it "should filter company by name" do
                get "/companies?search=prime"
                payload = JSON.parse(response.body)
                expect(payload).to_not be_empty
                expect(payload.size).to eq(1)
                expect(payload.map { |p| p["id"]}.sort ).to eq([prime.id].sort)
                expect(response).to have_http_status(200)
            end
        end
    end

    describe "With data in the DB" do
        let!(:companies) { create_list(:company, 10) }

        it "should return all the registed companies" do
            get '/companies'
            payload = JSON.parse(response.body)
            expect(payload.size).to eq(companies.size)
            expect(response).to have_http_status(200)
        end
    end

    describe " GET /company/{id}" do
        let!(:company) { create(:company)}

        it "should return all the registred companies" do
            get "/companies/#{company.id}"
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["id"]).to eq(company.id)
            expect(payload["name"]).to eq(company.name)
            expect(payload["city"]).to eq(company.city)
            expect(payload["identification"]).to eq(company.identification)
            expect(payload["adress"]).to eq(company.adress)
            expect(payload["email"]).to eq(company.email)
            expect(payload["phone"]).to eq(company.phone)
            expect(response).to have_http_status(200)
        end
    end


    describe " COMPANY /companies" do
        let!(:company) { create(:company) }

        it "should create a company" do
            req_payload = {
                company: {
                    name: "name",
                    city: "city",
                    identification: "identification",
                    adress: "adress",
                    email: "email",
                    phone: "phone"
                }
            }

            #POST HTTP
            post "/companies", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload).not_to be_nil
            expect(response).to have_http_status(:created)
        end

        it "should return error message on invalid company" do
            req_payload = {
                company: {
                    city: "city",
                    adress: "adrees",
                    company_id: company.id
                }
            }

            # POST HTTP
            post "/companies", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["error"]).to_not be_empty
            expect(response).to have_http_status(:unprocessable_entity)
        end
    end

    describe "PUT /companies/{id}" do
        let!(:iten) { create(:company) }

        it "should update a company" do
            req_payload = {
                company: {
                    city: "city",
                    adress: "adrees",
                    email: "email"

                }
            }

            #PUT HTTP
            put "/companies/#{iten.id}", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["id"]).to eq(iten.id)
            expect(response).to have_http_status(:ok)
        end

        it "should return error message on invalid company" do
            req_payload = {
                company: {
                    name: nil,
                    city: nil,
                    adress: nil
                }
            }

            # PUT HTTP
            put "/companies/#{iten.id}", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["error"]).to_not be_empty
            expect(response).to have_http_status(:unprocessable_entity)
        end
    end
end