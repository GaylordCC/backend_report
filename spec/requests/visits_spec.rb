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

        # describe " GET /visits/{id}" do
        #     let!(:visit) { create(:visit)}


        # end

    end

     



end