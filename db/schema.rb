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

ActiveRecord::Schema[7.0].define(version: 2023_02_21_163234) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

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

  create_table "detail_reports", force: :cascade do |t|
    t.datetime "hour"
    t.decimal "u_1"
    t.decimal "u_2"
    t.decimal "u_3"
    t.decimal "u_n"
    t.decimal "u_12"
    t.decimal "u_23"
    t.decimal "u_31"
    t.decimal "i_1"
    t.decimal "i_2"
    t.decimal "i_3"
    t.decimal "i_n"
    t.decimal "f"
    t.decimal "u_over_1"
    t.decimal "u_over_2"
    t.decimal "u_over_3"
    t.decimal "p_fetot_cap"
    t.decimal "p_fetot_ind"
    t.decimal "p_fund_tot"
    t.decimal "q_tot_cap"
    t.decimal "q_tot_ind"
    t.decimal "thd_u_1"
    t.decimal "thd_u_2"
    t.decimal "thd_u_3"
    t.decimal "thd_i_1"
    t.decimal "thd_i_2"
    t.decimal "thd_i_3"
    t.decimal "u_percent"
    t.decimal "i_percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "reports_id"
    t.index ["reports_id"], name: "index_detail_reports_on_reports_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "detail_reports", "reports", column: "reports_id"
  add_foreign_key "reports", "visits"
  add_foreign_key "visits", "companies"
end
