class AddPotApaToDetailReports < ActiveRecord::Migration[7.0]
  def change
    add_column :detail_reports, :se_fund_tot, :decimal
  end
end
