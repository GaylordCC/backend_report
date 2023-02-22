class AddDetailReportToReports < ActiveRecord::Migration[7.0]
  def change
    add_reference :detail_reports, :reports, index: true, foreign_key: true, null: true
  end
end
