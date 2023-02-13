# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_13_173152) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "identification"
    t.string "adress"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "report_title"
    t.string "report_subtitle"
    t.string "connection_point"
    t.datetime "initial_day"
    t.datetime "final_day"
    t.integer "total_days_service"
    t.string "author"
    t.string "reviewer"
    t.string "client_responsible"
    t.string "equipment"
    t.string "equipment_model"
    t.integer "working_voltage"
    t.string "connection_type"
    t.integer "phase_number"
    t.integer "total_power"
    t.string "company_photo"
    t.string "connection_point_photo"
    t.string "city"
    t.string "department"
    t.integer "year"
    t.bigint "visit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["visit_id"], name: "index_reports_on_visit_id"
  end

  create_table "visits", force: :cascade do |t|
    t.date "visit_date"
    t.string "profesion"
    t.string "coordinator"
    t.integer "number_day"
    t.string "equimen_description"
    t.string "contact_email"
    t.string "phase"
    t.datetime "initial_day"
    t.datetime "final_day"
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_visits_on_company_id"
  end

  add_foreign_key "reports", "visits"
  add_foreign_key "visits", "companies"
end
