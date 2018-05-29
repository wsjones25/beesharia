# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema.define(version: 2018_05_29_115031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.integer "company_number"
    t.string "company_name"
    t.string "director_names"
    t.integer "years_credit_history"
    t.string "business_category"
    t.string "office_address"
    t.integer "last_year_ebit"
    t.integer "last_year_interest"
    t.integer "last_year_debt"
    t.integer "last_year_assets"
    t.string "loan_type"
    t.integer "borrowing_length"
    t.string "use_of_funds_description"
    t.string "doc_accounts"
    t.string "doc_bank_statements"
    t.integer "required_funds"
    t.integer "days_remaining"
    t.float "loan_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "photo"
    t.string "risk_score"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "investments", force: :cascade do |t|
    t.integer "credit_amount"
    t.bigint "company_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_investments_on_company_id"
    t.index ["user_id"], name: "index_investments_on_user_id"
  end

  create_table "topups", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_topups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "company"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "companies", "users"
  add_foreign_key "investments", "companies"
  add_foreign_key "investments", "users"
  add_foreign_key "topups", "users"
end
