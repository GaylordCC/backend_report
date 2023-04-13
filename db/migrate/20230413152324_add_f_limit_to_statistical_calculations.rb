class AddFLimitToStatisticalCalculations < ActiveRecord::Migration[7.0]
  def change
    add_column :statistical_calculations, :f_min, :decimal
    add_column :statistical_calculations, :f_max, :decimal
    add_column :statistical_calculations, :f_prom, :decimal
  end
end
