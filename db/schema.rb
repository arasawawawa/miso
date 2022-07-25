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

ActiveRecord::Schema[7.0].define(version: 2022_07_25_200211) do
  create_table "case_tags", force: :cascade do |t|
    t.integer "case_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_case_tags_on_case_id"
    t.index ["tag_id"], name: "index_case_tags_on_tag_id"
  end

  create_table "cases", force: :cascade do |t|
    t.integer "clinic_id"
    t.string "title"
    t.integer "age"
    t.integer "sex"
    t.integer "doctor_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_cases_on_clinic_id"
  end

  create_table "clinic_tags", force: :cascade do |t|
    t.integer "clinic_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_clinic_tags_on_clinic_id"
    t.index ["tag_id"], name: "index_clinic_tags_on_tag_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.integer "prefecture_id"
    t.integer "area_id"
    t.text "holiday"
    t.text "opentime"
    t.text "bio_content"
    t.integer "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctor_tags", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctor_tags_on_doctor_id"
    t.index ["tag_id"], name: "index_doctor_tags_on_tag_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.integer "clinic_id"
    t.string "name"
    t.text "history"
    t.text "license"
    t.string "homepage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_doctors_on_clinic_id"
  end

  create_table "menu_tags", force: :cascade do |t|
    t.integer "menu_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_menu_tags_on_menu_id"
    t.index ["tag_id"], name: "index_menu_tags_on_tag_id"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_menus_on_clinic_id"
  end

  create_table "specialty_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialty_items", force: :cascade do |t|
    t.integer "specialty_category_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specialty_category_id"], name: "index_specialty_items_on_specialty_category_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_details", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sex"
    t.date "birthday"
    t.boolean "adult"
    t.integer "prefecture_id"
    t.boolean "experience"
    t.text "profile"
    t.integer "point"
    t.integer "is_activated"
    t.integer "is_deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_details_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "profile_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
