class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.date :visit_date
      t.string :profesion
      t.string :coordinator
      t.integer :number_day
      t.string :equimen_description
      t.string :contact_email
      t.string :phase
      t.datetime :initial_day
      t.datetime :final_day
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
