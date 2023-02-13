class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :report_title
      t.string :report_subtitle
      t.string :connection_point
      t.datetime :initial_day
      t.datetime :final_day
      t.integer :total_days_service
      t.string :author
      t.string :reviewer
      t.string :client_responsible
      t.string :equipment
      t.string :equipment_model
      t.integer :working_voltage
      t.string :connection_type
      t.integer :phase_number
      t.integer :total_power
      t.string :company_photo
      t.string :connection_point_photo
      t.string :city
      t.string :department
      t.integer :year
      t.references :visit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
