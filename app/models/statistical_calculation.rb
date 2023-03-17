class StatisticalCalculation < ApplicationRecord
  belongs_to :report

  #validates
  validates :u_1_min, presence: true
  validates :u_1_max, presence: true
  validates :u_1_prom, presence: true
  validates :u_1_percentil_99, presence: true
  validates :u_1_percentil_95, presence: true
  validates :u_1_percentil_5, presence: true

  validates :u_2_min, presence: true
  validates :u_2_max, presence: true
  validates :u_2_prom, presence: true
  validates :u_2_percentil_99, presence: true
  validates :u_2_percentil_95, presence: true
  validates :u_2_percentil_5, presence: true
  
  validates :u_3_min, presence: true
  validates :u_3_max, presence: true
  validates :u_3_prom, presence: true
  validates :u_3_percentil_99, presence: true
  validates :u_3_percentil_95, presence: true
  validates :u_3_percentil_5, presence: true
  
  validates :I_1_min, presence: true
  validates :I_1_max, presence: true
  validates :I_1_prom, presence: true
  validates :I_1_percentil_99, presence: true
  validates :I_1_percentil_95, presence: true
  validates :I_1_percentil_5, presence: true

  validates :I_2_min, presence: true
  validates :I_2_max, presence: true
  validates :I_2_prom, presence: true
  validates :I_2_percentil_99, presence: true
  validates :I_2_percentil_95, presence: true
  validates :I_2_percentil_5, presence: true


  validates :I_3_min, presence: true
  validates :I_3_max, presence: true
  validates :I_3_prom, presence: true
  validates :I_3_percentil_99, presence: true
  validates :I_3_percentil_95, presence: true
  validates :I_3_percentil_5, presence: true

  validates :p_fetot_cap_min, presence: true
  validates :p_fetot_cap_max, presence: true
  validates :p_fetot_cap_prom, presence: true
  validates :p_fetot_cap_percentil_99, presence: true
  validates :p_fetot_cap_percentil_95, presence: true
  validates :p_fetot_cap_percentil_5, presence: true

  validates :p_fetot_ind_min, presence: true
  validates :p_fetot_ind_max, presence: true
  validates :p_fetot_ind_prom, presence: true
  validates :p_fetot_ind_percentil_99, presence: true
  validates :p_fetot_ind_percentil_95, presence: true
  validates :p_fetot_ind_percentil_5, presence: true

  validates :p_fund_tot_min, presence: true
  validates :p_fund_tot_max, presence: true
  validates :p_fund_tot_prom, presence: true
  validates :p_fund_tot_percentil_99, presence: true
  validates :p_fund_tot_percentil_95, presence: true
  validates :p_fund_tot_percentil_5, presence: true

  validates :q_tot_cap_min, presence: true
  validates :q_tot_cap_max, presence: true
  validates :q_tot_cap_prom, presence: true
  validates :q_tot_cap_percentil_99, presence: true
  validates :q_tot_cap_percentil_95, presence: true
  validates :q_tot_cap_percentil_5, presence: true

  validates :q_tot_ind_min, presence: true
  validates :q_tot_ind_max, presence: true
  validates :q_tot_ind_prom, presence: true
  validates :q_tot_ind_percentil_99, presence: true
  validates :q_tot_ind_percentil_95, presence: true
  validates :q_tot_ind_percentil_5, presence: true

  validates :thd_u_1_min, presence: true
  validates :thd_u_1_max, presence: true
  validates :thd_u_1_prom, presence: true
  validates :thd_u_1_percentil_99, presence: true
  validates :thd_u_1_percentil_95, presence: true
  validates :thd_u_1_percentil_5, presence: true

  validates :thd_u_2_min, presence: true
  validates :thd_u_2_max, presence: true
  validates :thd_u_2_prom, presence: true
  validates :thd_u_2_percentil_99, presence: true
  validates :thd_u_2_percentil_95, presence: true
  validates :thd_u_2_percentil_5, presence: true

  validates :thd_u_3_min, presence: true
  validates :thd_u_3_max, presence: true
  validates :thd_u_3_prom, presence: true
  validates :thd_u_3_percentil_99, presence: true
  validates :thd_u_3_percentil_95, presence: true
  validates :thd_u_3_percentil_5, presence: true

  validates :thd_i_1_min, presence: true
  validates :thd_i_1_max, presence: true
  validates :thd_i_1_prom, presence: true
  validates :thd_i_1_percentil_99, presence: true
  validates :thd_i_1_percentil_95, presence: true
  validates :thd_i_1_percentil_5, presence: true

  validates :thd_i_2_min, presence: true
  validates :thd_i_2_max, presence: true
  validates :thd_i_2_prom, presence: true
  validates :thd_i_2_percentil_99, presence: true
  validates :thd_i_2_percentil_95, presence: true
  validates :thd_i_2_percentil_5, presence: true

  validates :thd_i_3_min, presence: true
  validates :thd_i_3_max, presence: true
  validates :thd_i_3_prom, presence: true
  validates :thd_i_3_percentil_99, presence: true
  validates :thd_i_3_percentil_95, presence: true
  validates :thd_i_3_percentil_5, presence: true

  validates :u_percent_min, presence: true
  validates :u_percent_max, presence: true
  validates :u_percent_prom, presence: true
  validates :u_percent_percentil_99, presence: true
  validates :u_percent_percentil_95, presence: true
  validates :u_percent_percentil_5, presence: true


  validates :i_percent_min, presence: true
  validates :i_percent_max, presence: true
  validates :i_percent_prom, presence: true
  validates :i_percent_percentil_99, presence: true
  validates :i_percent_percentil_95, presence: true
  validates :i_percent_percentil_5, presence: true

  validates :report_id, presence: true
end
