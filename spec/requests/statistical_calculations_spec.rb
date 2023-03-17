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
                    u_1_percentil_99: "u_1_percentil_99",
                    u_1_percentil_95: "u_1_percentil_95",
                    u_1_percentil_5: "u_1_percentil_5",

                    u_2_min: "u_2_min",
                    u_2_max: "u_2_max",
                    u_2_prom: "u_2_prom",
                    u_2_percentil_99: "u_2_percentil_99",
                    u_2_percentil_95: "u_2_percentil_95",
                    u_2_percentil_5: "u_2_percentil_5",

                    u_3_min: "u_3_min",
                    u_3_max: "u_3_max",
                    u_3_prom: "u_3_prom",
                    u_3_percentil_99: "u_3_percentil_99",
                    u_3_percentil_95: "u_3_percentil_95",
                    u_3_percentil_5: "u_3_percentil_5",
                    
                    i_1_min: "i_1_min",
                    i_1_max: "i_1_max",
                    i_1_prom: "i_1_prom",
                    i_1_percentil_99: "i_1_percentil_99",
                    i_1_percentil_95: "i_1_percentil_95",
                    i_1_percentil_5: "i_1_percentil_5",

                    i_2_min: "i_2_min",
                    I_2_max: "i_2_max",
                    i_2_prom: "i_2_prom",
                    i_2_percentil_99: "i_2_percentil_99",
                    i_2_percentil_95: "i_2_percentil_95",
                    i_2_percentil_5: "i_2_percentil_5",

                    i_3_min: "i_3_min",
                    i_3_max: "i_3_max",
                    i_3_prom: "i_3_prom",
                    i_3_percentil_99: "i_3_percentil_99",
                    i_3_percentil_95: "i_3_percentil_95",
                    i_3_percentil_5: "i_3_percentil_5",
                                        
                    p_fetot_cap_min: "p_fetot_cap_min",
                    p_fetot_cap_max: "p_fetot_cap_max",
                    p_fetot_cap_prom: "p_fetot_cap_prom",
                    p_fetot_cap_percentil_99: "p_fetot_cap_percentil_99",
                    p_fetot_cap_percentil_95: "p_fetot_cap_percentil_95",
                    p_fetot_cap_percentil_5: "p_fetot_cap_percentil_5",

                    p_fetot_ind_min: "p_fetot_ind_min",
                    p_fetot_ind_max: "p_fetot_ind_max",
                    p_fetot_ind_prom: "p_fetot_ind_prom",
                    p_fetot_ind_percentil_99: "p_fetot_ind_percentil_99",
                    p_fetot_ind_percentil_95: "p_fetot_ind_percentil_95",
                    p_fetot_ind_percentil_5: "p_fetot_ind_percentil_5",

                    p_fund_tot_min: "p_fund_tot_min",
                    p_fund_tot_max: "p_fund_tot_max",
                    p_fund_tot_prom: "p_fund_tot_prom",
                    p_fund_tot_percentil_99: "p_fund_tot_percentil_99",
                    p_fund_tot_percentil_95: "p_fund_tot_percentil_95",
                    p_fund_tot_percentil_5: "p_fund_tot_percentil_5",

                    q_tot_cap_min: "q_tot_cap_min",
                    q_tot_cap_max: "q_tot_cap_max",
                    q_tot_cap_prom: "q_tot_cap_prom",
                    q_tot_cap_percentil_99: "q_tot_cap_percentil_99",
                    q_tot_cap_percentil_95: "q_tot_cap_percentil_95",
                    q_tot_cap_percentil_5: "q_tot_cap_percentil_5",

                    q_tot_ind_min: "q_tot_ind_min",
                    q_tot_ind_max: "q_tot_ind_max",
                    q_tot_ind_prom: "q_tot_ind_prom",
                    q_tot_ind_percentil_99: "q_tot_ind_percentil_99",
                    q_tot_ind_percentil_95: "q_tot_ind_percentil_95",
                    q_tot_ind_percentil_5: "q_tot_ind_percentil_5",

                    thd_u_1_min: "thd_u_1_min",
                    thd_u_1_max: "thd_u_1_max",
                    thd_u_1_prom: "thd_u_1_prom",
                    thd_u_1_percentil_99: "thd_u_1_percentil_99",
                    thd_u_1_percentil_95: "thd_u_1_percentil_95",
                    thd_u_1_percentil_5: "thd_u_1_percentil_5",

                    thd_u_2_min: "thd_u_2_min",
                    thd_u_2_max: "thd_u_2_max",
                    thd_u_2_prom: "thd_u_2_prom",
                    thd_u_2_percentil_99: "thd_u_2_percentil_99",
                    thd_u_2_percentil_95: "thd_u_2_percentil_95",
                    thd_u_2_percentil_5: "thd_u_2_percentil_5",

                    thd_u_3_min: "thd_u_3_min",
                    thd_u_3_max: "thd_u_3_max",
                    thd_u_3_prom: "thd_u_3_prom",
                    thd_u_3_percentil_99: "thd_u_3_percentil_99",
                    thd_u_3_percentil_95: "thd_u_3_percentil_95",
                    thd_u_3_percentil_5: "thd_u_3_percentil_5",
                    
                    thd_i_1_min: "thd_i_1_min",
                    thd_i_1_max: "thd_i_1_max",
                    thd_i_1_prom: "thd_i_1_prom",
                    thd_i_1_percentil_99: "thd_i_1_percentil_99",
                    thd_i_1_percentil_95: "thd_i_1_percentil_95",
                    thd_i_1_percentil_5: "thd_i_1_percentil_5",

                    thd_i_2_min: "thd_i_2_min",
                    thd_i_2_max: "thd_i_2_max",
                    thd_i_2_prom: "thd_i_2_prom",
                    thd_i_2_med: "thd_i_2_med",
                    thd_i_2_percentil_99: "thd_i_2_percentil_99",
                    thd_i_2_percentil_95: "thd_i_2_percentil_95",
                    thd_i_2_percentil_5: "thd_i_2_percentil_5",

                    thd_i_3_min: "thd_i_3_min",
                    thd_i_3_max: "thd_i_3_max",
                    thd_i_3_prom: "thd_i_3_prom",
                    thd_i_3_med: "thd_i_3_med",
                    thd_i_3_percentil_99: "thd_i_3_percentil_99",
                    thd_i_3_percentil_95: "thd_i_3_percentil_95",
                    thd_i_3_percentil_5: "thd_i_3_percentil_5",

                    u_percent_min: "u_percent_min",
                    u_percent_max: "u_percent_max",
                    u_percent_prom: "u_percent_prom",
                    u_percent_percentil_99: "u_percent_percentil_99",
                    u_percent_percentil_95: "u_percent_percentil_95",
                    u_percent_percentil_5: "u_percent_percentil_5",


                    i_percent_min: "i_percent_min",
                    i_percent_max: "i_percent_max",
                    i_percent_prom: "i_percent_prom",
                    i_percent_percentil_99: "i_percent_percentil_99",
                    i_percent_percentil_95: "i_percent_percentil_95",
                    i_percent_percentil_5: "i_percent_percentil_5",
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