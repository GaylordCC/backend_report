require "rails_helper";
require "faker";

RSpec.describe "statistical_calculations", type: :request do
    describe "GET / statistical_calculations" do
        
        it "should retur OK, with no data in the DB" do
            get '/statistical_calculations'
            payload = JSON.parse(response.body)
            expect(payload).to be_empty
            expect(response).to have_http_status(200)
        end
    end

    describe "search statistical_calculations" do
        let!(:statistical_calculations) { create_list(:statistical_calculation, 10) }

        it "should return all registre statisticalcalculations" do
            get '/statistical_calculations'
            payload = JSON.parse(response.body)
            expect(payload.size).to eq(statistical_calculations.size)
            expect(response).to have_http_status(200)
        end
    end

    describe "STATISTICALCALCULATION / statisticalcalculations" do
        let!(:report) { create(:report) }
        let!(:statistical_calculation) { create(:statistical_calculation) }

        it "should create a statisticalcalculations" do
            req_payload = {
                statistical_calculation: {
                    report_id: report.id,
                    u_1_min: "u_1_min",
                    u_1_max: "u_1_max",
                    u_1_prom: "u_1_prom",
                    u_1_med: "u_1_med",
                    u_2_min: "u_2_min",
                    u_2_max: "u_2_max",
                    u_2_prom: "u_2_prom",
                    u_2_med: "u_2_med",
                    u_3_min: "u_3_min",
                    u_3_max: "u_3_max",
                    u_3_prom: "u_3_prom",
                    u_3_med: "u_3_med",
                    I_1_min: "I_1_min",
                    I_1_max: "I_1_max",
                    I_1_prom: "I_1_prom",
                    I_1_med: "I_1_med",
                    I_2_min: "I_2_min",
                    I_2_max: "I_2_max",
                    I_2_prom: "I_2_prom",
                    I_2_med: "I_2_med",
                    I_3_min: "I_3_min",
                    I_3_max: "I_3_max",
                    I_3_prom: "I_3_prom",
                    I_3_med: "I_3_med",
                    p_fetot_cap_min: "p_fetot_cap_min",
                    p_fetot_cap_max: "p_fetot_cap_max",
                    p_fetot_cap_prom: "p_fetot_cap_prom",
                    p_fetot_cap_med: "p_fetot_cap_med",
                    p_fetot_ind_min: "p_fetot_ind_min",
                    p_fetot_ind_max: "p_fetot_ind_max",
                    p_fetot_ind_prom: "p_fetot_ind_prom",
                    p_fetot_ind_med: "p_fetot_ind_med",
                    p_fund_tot_min: "p_fund_tot_min",
                    p_fund_tot_max: "p_fund_tot_max",
                    p_fund_tot_prom: "p_fund_tot_prom",
                    p_fund_tot_med: "p_fund_tot_med",
                    q_tot_cap_min: "q_tot_cap_min",
                    q_tot_cap_max: "q_tot_cap_max",
                    q_tot_cap_prom: "q_tot_cap_prom",
                    q_tot_cap_med: "q_tot_cap_med",
                    q_tot_ind_min: "q_tot_ind_min",
                    q_tot_ind_max: "q_tot_ind_max",
                    q_tot_ind_prom: "q_tot_ind_prom",
                    q_tot_ind_med: "q_tot_ind_med",
                    thd_u_1_min: "thd_u_1_min",
                    thd_u_1_max: "thd_u_1_max",
                    thd_u_1_prom: "thd_u_1_prom",
                    thd_u_1_med: "thd_u_1_med",
                    thd_u_2_min: "thd_u_2_min",
                    thd_u_2_max: "thd_u_2_max",
                    thd_u_2_prom: "thd_u_2_prom",
                    thd_u_2_med: "thd_u_2_med",
                    thd_u_3_min: "thd_u_3_min",
                    thd_u_3_max: "thd_u_3_max",
                    thd_u_3_prom: "thd_u_3_prom",
                    thd_u_3_med: "thd_u_3_med",
                    thd_i_1_min: "thd_i_1_min",
                    thd_i_1_max: "thd_i_1_max",
                    thd_i_1_prom: "thd_i_1_prom",
                    thd_i_1_med: "thd_i_1_med",
                    thd_i_2_min: "thd_i_2_min",
                    thd_i_2_max: "thd_i_2_max",
                    thd_i_2_prom: "thd_i_2_prom",
                    thd_i_2_med: "thd_i_2_med",
                    thd_i_3_min: "thd_i_3_min",
                    thd_i_3_max: "thd_i_3_max",
                    thd_i_3_prom: "thd_i_3_prom",
                    thd_i_3_med: "thd_i_3_med",
                    u_percent_min: "u_percent_min",
                    u_percent_max: "u_percent_max",
                    u_percent_prom: "u_percent_prom",
                    u_percent_med: "u_percent_med",
                    i_percent_min: "i_percent_min",
                    i_percent_max: "i_percent_max",
                    i_percent_prom: "i_percent_prom",
                    i_percent_med: "i_percent_med"
                }
            }

            #POST HTTP
            post "/statistical_calculations", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload).not_to be_nil
            expect(response).to have_http_status(:created)
        end

        it "should return error message on incomplete statisticalcalculations" do
            req_payload = {
                statistical_calculation: {
                    thd_i_2_min: "thd_i_2_min",
                    thd_i_2_max: "thd_i_2_max",
                    thd_i_2_prom: "thd_i_2_prom",
                    thd_i_2_med: "thd_i_2_med",
                    thd_i_3_min: "thd_i_3_min",
                    thd_i_3_max: "thd_i_3_max",
                    thd_i_3_prom: "thd_i_3_prom",
                    thd_i_3_med: "thd_i_3_med",
                    u_percent_min: "u_percent_min",
                    u_percent_max: "u_percent_max",
                    u_percent_prom: "u_percent_prom",
                    u_percent_med: "u_percent_med",
                    i_percent_min: "i_percent_min",
                    i_percent_max: "i_percent_max",
                    i_percent_prom: "i_percent_prom",
                    i_percent_med: "i_percent_med",
                }
            }
            
            #POST HTTP
            post "/statistical_calculations", params: req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["error"]).to_not be_empty
            expect(response).to have_http_status(:unprocessable_entity)
        end
    end

    describe "PUT / statisticalcalculations/{id}" do
        let!(:report) { create(:report) }
        let!(:statistical_calculation) { create(:statistical_calculation) }


        it "should update a statisticalcalculation" do
            req_payload = {
                statistical_calculation: {
                    thd_i_2_min: "thd_i_2_min",
                    thd_i_2_max: "thd_i_2_max",
                    thd_i_2_prom: "thd_i_2_prom",
                    thd_i_2_med: "thd_i_2_med",
                    thd_i_3_min: "thd_i_3_min",
                    thd_i_3_max: "thd_i_3_max",
                    thd_i_3_prom: "thd_i_3_prom",
                    thd_i_3_med: "thd_i_3_med",
                    u_percent_min: "u_percent_min",
                    u_percent_max: "u_percent_max",
                    u_percent_prom: "u_percent_prom",
                    u_percent_med: "u_percent_med",
                    i_percent_min: "i_percent_min",
                    i_percent_max: "i_percent_max",
                    i_percent_prom: "i_percent_prom",
                    i_percent_med: "i_percent_med",
                }
            }

            # PUT HTTP
            put "/statistical_calculations/#{statistical_calculation.id}", params:req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["id"]).to eq(statistical_calculation.id)
            expect(response).to have_http_status(:ok)
        end

        it "should return error message on invalid statisticalcalculation" do
            req_payload = {
                statistical_calculation: {
                    thd_i_2_min: nil,
                    thd_i_2_max: nil,
                    thd_i_2_prom: nil,
                    thd_i_2_med: nil,
                    thd_i_3_min: nil,
                    thd_i_3_max: nil,
                    thd_i_3_prom: nil,
                    thd_i_3_med: nil,
                    u_percent_min: nil,
                    u_percent_max: nil,
                    u_percent_prom: nil,
                    u_percent_med: nil,
                    i_percent_min: nil,
                    i_percent_max: nil,
                    i_percent_prom: nil,
                    i_percent_med: nil,
                }
            }

            # PUT HTTP
            put "/statistical_calculations/#{statistical_calculation.id}", params:req_payload
            payload = JSON.parse(response.body)
            expect(payload).to_not be_empty
            expect(payload["error"]).to_not be_empty
            expect(response).to have_http_status(:unprocessable_entity)
        end
    end
end