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

ActiveRecord::Schema.define(version: 20161207092400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "expense_id"
    t.integer  "deposit_id"
    t.float    "outstanding_balance"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "debt_id"
    t.index ["deposit_id"], name: "index_accounts_on_deposit_id", using: :btree
    t.index ["expense_id"], name: "index_accounts_on_expense_id", using: :btree
    t.index ["user_id"], name: "index_accounts_on_user_id", using: :btree
  end

  create_table "debts", force: :cascade do |t|
    t.text     "description"
    t.integer  "user_id"
    t.float    "limit"
    t.float    "outstanding_amount"
    t.datetime "maturity_date"
    t.float    "monthly_payment_amount"
    t.integer  "category"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "account_id"
    t.index ["user_id"], name: "index_debts_on_user_id", using: :btree
  end

  create_table "deposit_subtypes", force: :cascade do |t|
    t.string   "name"
    t.integer  "deposit_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["deposit_type_id"], name: "index_deposit_subtypes_on_deposit_type_id", using: :btree
  end

  create_table "deposit_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "deposit_subtype_id"
    t.integer  "deposit_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["deposit_id"], name: "index_deposit_types_on_deposit_id", using: :btree
  end

  create_table "deposits", force: :cascade do |t|
    t.text     "description"
    t.float    "amount"
    t.integer  "period"
    t.integer  "deposit_type_id"
    t.integer  "deposit_subtype_id"
    t.integer  "account_id"
    t.datetime "deposited_at"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["user_id"], name: "index_deposits_on_user_id", using: :btree
  end

  create_table "expenses", force: :cascade do |t|
    t.text     "description"
    t.float    "amount"
    t.integer  "period"
    t.datetime "paid_at"
    t.integer  "category"
    t.integer  "account_id"
    t.integer  "classification"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_expenses_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "accounts", "deposits"
  add_foreign_key "accounts", "expenses"
  add_foreign_key "accounts", "users"
  add_foreign_key "debts", "users"
  add_foreign_key "deposit_subtypes", "deposit_types"
  add_foreign_key "deposit_types", "deposits"
  add_foreign_key "deposits", "users"
  add_foreign_key "expenses", "users"
end
