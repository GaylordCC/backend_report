class AddPotApaPercToStatisticalCalculations < ActiveRecord::Migration[7.0]
  def change
    add_column :statistical_calculations, :se_fund_tot_min, :decimal
    add_column :statistical_calculations, :se_fund_tot_max, :decimal
    add_column :statistical_calculations, :se_fund_tot_prom, :decimal
    add_column :statistical_calculations, :se_fund_tot_percentil_99, :decimal
    add_column :statistical_calculations, :se_fund_tot_percentil_95, :decimal
    add_column :statistical_calculations, :se_fund_tot_percentil_5, :decimal
  end
end
