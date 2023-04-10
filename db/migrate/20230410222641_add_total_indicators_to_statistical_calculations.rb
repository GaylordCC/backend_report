class AddTotalIndicatorsToStatisticalCalculations < ActiveRecord::Migration[7.0]
  def change
    add_column :statistical_calculations, :t_thd_u_95, :decimal
    add_column :statistical_calculations, :t_thd_u_5, :decimal
    add_column :statistical_calculations, :t_thd_i_99, :decimal
    add_column :statistical_calculations, :t_thd_i_95, :decimal
    add_column :statistical_calculations, :t_thd_i_5, :decimal
  end
end
