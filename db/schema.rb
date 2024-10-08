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

ActiveRecord::Schema[7.2].define(version: 2024_09_22_072100) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "custom_field_values", force: :cascade do |t|
    t.string "value"
    t.bigint "custom_fields_id"
    t.bigint "profiles_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["custom_fields_id"], name: "index_custom_field_values_on_custom_fields_id"
    t.index ["profiles_id"], name: "index_custom_field_values_on_profiles_id"
  end

  create_table "custom_fields", force: :cascade do |t|
    t.string "name"
    t.integer "value_type"
    t.bigint "profiles_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profiles_id"], name: "index_custom_fields_on_profiles_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email"
    t.string "contact_no"
    t.datetime "birth_date"
    t.integer "gender"
    t.string "country"
    t.string "city"
    t.text "address"
    t.integer "blood_group"
    t.string "mother_name"
    t.string "father_name"
    t.string "profession"
    t.text "profession_details"
    t.string "current_work_country"
    t.string "current_work_city"
    t.text "current_work_address"
    t.integer "relation"
    t.text "first_meet_details"
    t.text "last_meet_details"
    t.text "qualities"
    t.text "religion"
    t.text "assistance_details"
    t.text "education_details"
    t.text "activity_report"
    t.text "personal_traits"
    t.integer "connection_score"
    t.text "interest_areas_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "custom_field_values", "custom_fields", column: "custom_fields_id"
  add_foreign_key "custom_field_values", "profiles", column: "profiles_id"
  add_foreign_key "custom_fields", "profiles", column: "profiles_id"
end
