class CreateStatisticalCalculations < ActiveRecord::Migration[7.0]
  def change
    create_table :statistical_calculations do |t|
      t.decimal :u_1_min
      t.decimal :u_1_max
      t.decimal :u_1_prom
      t.decimal :u_1_med
      t.decimal :u_2_min
      t.decimal :u_2_max
      t.decimal :u_2_prom
      t.decimal :u_2_med
      t.decimal :u_3_min
      t.decimal :u_3_max
      t.decimal :u_3_prom
      t.decimal :u_3_med
      t.decimal :I_1_min
      t.decimal :I_1_max
      t.decimal :I_1_prom
      t.decimal :I_1_med
      t.decimal :I_2_min
      t.decimal :I_2_max
      t.decimal :I_2_prom
      t.decimal :I_2_med
      t.decimal :I_3_min
      t.decimal :I_3_max
      t.decimal :I_3_prom
      t.decimal :I_3_med
      t.decimal :p_fetot_cap_min
      t.decimal :p_fetot_cap_max
      t.decimal :p_fetot_cap_prom
      t.decimal :p_fetot_cap_med
      t.decimal :p_fetot_ind_min
      t.decimal :p_fetot_ind_max
      t.decimal :p_fetot_ind_prom
      t.decimal :p_fetot_ind_med
      t.decimal :p_fund_tot_min
      t.decimal :p_fund_tot_max
      t.decimal :p_fund_tot_prom
      t.decimal :p_fund_tot_med
      t.decimal :q_tot_cap_min
      t.decimal :q_tot_cap_max
      t.decimal :q_tot_cap_prom
      t.decimal :q_tot_cap_med
      t.decimal :q_tot_ind_min
      t.decimal :q_tot_ind_max
      t.decimal :q_tot_ind_prom
      t.decimal :q_tot_ind_med
      t.decimal :thd_u_1_min
      t.decimal :thd_u_1_max
      t.decimal :thd_u_1_prom
      t.decimal :thd_u_1_med
      t.decimal :thd_u_2_min
      t.decimal :thd_u_2_max
      t.decimal :thd_u_2_prom
      t.decimal :thd_u_2_med
      t.decimal :thd_u_3_min
      t.decimal :thd_u_3_max
      t.decimal :thd_u_3_prom
      t.decimal :thd_u_3_med
      t.decimal :thd_i_1_min
      t.decimal :thd_i_1_max
      t.decimal :thd_i_1_prom
      t.decimal :thd_i_1_med
      t.decimal :thd_i_2_min
      t.decimal :thd_i_2_max
      t.decimal :thd_i_2_prom
      t.decimal :thd_i_2_med
      t.decimal :thd_i_3_min
      t.decimal :thd_i_3_max
      t.decimal :thd_i_3_prom
      t.decimal :thd_i_3_med
      t.decimal :u_percent_min
      t.decimal :u_percent_max
      t.decimal :u_percent_prom
      t.decimal :u_percent_med
      t.decimal :i_percent_min
      t.decimal :i_percent_max
      t.decimal :i_percent_prom
      t.decimal :i_percent_med
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
