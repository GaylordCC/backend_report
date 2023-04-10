class AddColumnToStatisticalCalculations < ActiveRecord::Migration[7.0]
  def change
    add_column :statistical_calculations, :t_thd_u_99, :decimal
  end
end
