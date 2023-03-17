class RemoveColumnsFromStatisticalCalculations < ActiveRecord::Migration[7.0]
  def change
    remove_column :statistical_calculations, :u_1_med, :decimal
    remove_column :statistical_calculations, :u_2_med, :decimal
    remove_column :statistical_calculations, :u_3_med, :decimal
    remove_column :statistical_calculations, :I_1_med, :decimal
    remove_column :statistical_calculations, :I_2_med, :decimal
    remove_column :statistical_calculations, :I_3_med, :decimal
    remove_column :statistical_calculations, :p_fetot_cap_med, :decimal
    remove_column :statistical_calculations, :p_fetot_ind_med, :decimal
    remove_column :statistical_calculations, :p_fund_tot_med, :decimal
    remove_column :statistical_calculations, :q_tot_cap_med, :decimal
    remove_column :statistical_calculations, :q_tot_ind_med, :decimal
    remove_column :statistical_calculations, :thd_u_1_med, :decimal
    remove_column :statistical_calculations, :thd_u_2_med, :decimal
    remove_column :statistical_calculations, :thd_u_3_med, :decimal
    remove_column :statistical_calculations, :thd_i_1_med, :decimal
    remove_column :statistical_calculations, :thd_i_2_med, :decimal
    remove_column :statistical_calculations, :thd_i_3_med, :decimal
    remove_column :statistical_calculations, :u_percent_med, :decimal
    remove_column :statistical_calculations, :i_percent_med, :decimal
  end
end
