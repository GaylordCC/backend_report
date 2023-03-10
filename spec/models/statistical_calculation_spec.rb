require 'rails_helper'

RSpec.describe StatisticalCalculation, type: :model do

  describe "validation" do
    it "validation presence of require fields" do
      should validate_presence_of(:u_1_min)
      should validate_presence_of(:u_1_max)
      should validate_presence_of(:u_1_prom)
      should validate_presence_of(:u_1_med)
      should validate_presence_of(:u_2_min)
      should validate_presence_of(:u_2_max)
      should validate_presence_of(:u_2_prom)
      should validate_presence_of(:u_2_med)
      should validate_presence_of(:u_3_min)
      should validate_presence_of(:u_3_max)
      should validate_presence_of(:u_3_prom)
      should validate_presence_of(:u_3_med)
      should validate_presence_of(:I_1_min)
      should validate_presence_of(:I_1_max)
      should validate_presence_of(:I_1_prom)
      should validate_presence_of(:I_1_med)
      should validate_presence_of(:I_2_min)
      should validate_presence_of(:I_2_max)
      should validate_presence_of(:I_2_prom)
      should validate_presence_of(:I_2_med)
      should validate_presence_of(:I_3_min)
      should validate_presence_of(:I_3_max)
      should validate_presence_of(:I_3_prom)
      should validate_presence_of(:I_3_med)
      should validate_presence_of(:p_fetot_cap_min)
      should validate_presence_of(:p_fetot_cap_max)
      should validate_presence_of(:p_fetot_cap_prom)
      should validate_presence_of(:p_fetot_cap_med)
      should validate_presence_of(:p_fetot_ind_min)
      should validate_presence_of(:p_fetot_ind_max)
      should validate_presence_of(:p_fetot_ind_prom)
      should validate_presence_of(:p_fetot_ind_med)
      should validate_presence_of(:p_fund_tot_min)
      should validate_presence_of(:p_fund_tot_max)
      should validate_presence_of(:p_fund_tot_prom)
      should validate_presence_of(:p_fund_tot_med)
      should validate_presence_of(:q_tot_cap_min)
      should validate_presence_of(:q_tot_cap_max)
      should validate_presence_of(:q_tot_cap_prom)
      should validate_presence_of(:q_tot_cap_med)
      should validate_presence_of(:q_tot_ind_min)
      should validate_presence_of(:q_tot_ind_max)
      should validate_presence_of(:q_tot_ind_prom)
      should validate_presence_of(:q_tot_ind_med)
      should validate_presence_of(:thd_u_1_min)
      should validate_presence_of(:thd_u_1_max)
      should validate_presence_of(:thd_u_1_prom)
      should validate_presence_of(:thd_u_1_med)
      should validate_presence_of(:thd_u_2_min)
      should validate_presence_of(:thd_u_2_max)
      should validate_presence_of(:thd_u_2_prom)
      should validate_presence_of(:thd_u_2_med)
      should validate_presence_of(:thd_u_3_min)
      should validate_presence_of(:thd_u_3_max)
      should validate_presence_of(:thd_u_3_prom)
      should validate_presence_of(:thd_u_3_med)
      should validate_presence_of(:thd_i_1_min)
      should validate_presence_of(:thd_i_1_max)
      should validate_presence_of(:thd_i_1_prom)
      should validate_presence_of(:thd_i_1_med)
      should validate_presence_of(:thd_i_2_min)
      should validate_presence_of(:thd_i_2_max)
      should validate_presence_of(:thd_i_2_prom)
      should validate_presence_of(:thd_i_2_med)
      should validate_presence_of(:thd_i_3_min)
      should validate_presence_of(:thd_i_3_max)
      should validate_presence_of(:thd_i_3_prom)
      should validate_presence_of(:thd_i_3_med)
      should validate_presence_of(:u_percent_min)
      should validate_presence_of(:u_percent_max)
      should validate_presence_of(:u_percent_prom)
      should validate_presence_of(:u_percent_med)
      should validate_presence_of(:i_percent_min)
      should validate_presence_of(:i_percent_max)
      should validate_presence_of(:i_percent_prom)
      should validate_presence_of(:i_percent_med)
      should validate_presence_of(:report_id)
    end
  end
end
