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

ActiveRecord::Schema.define(version: 20170425210936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.text     "original_id"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.string   "released"
    t.string   "disposition"
    t.string   "cooperator"
    t.string   "race"
    t.string   "gender"
    t.string   "release_date"
    t.string   "institution_name_display"
    t.string   "institution_city"
    t.string   "institution_state"
    t.string   "institution_security_level"
    t.boolean  "case_informant"
    t.string   "case_charge_date"
    t.string   "case_conviction_date"
    t.string   "case_sentence_date"
    t.string   "case_district"
    t.string   "case_imprisonment"
    t.float    "case_restitution"
    t.string   "case_supervised_release"
    t.string   "case_state"
    t.boolean  "case_sting"
    t.string   "case_charge_1"
    t.string   "case_charge_2"
    t.string   "case_charge_3"
    t.string   "case_charge_4"
    t.string   "case_charge_5"
    t.string   "case_charge_6"
    t.string   "case_charge_7"
    t.string   "case_charge_8"
    t.string   "case_charge_9"
    t.text     "case_additional_sentence_details_1"
    t.text     "case_additional_sentence_details_2"
    t.text     "case_additional_sentence_details_3"
    t.text     "case_terror_org_1"
    t.text     "case_terror_org_2"
    t.text     "case_terror_org_3"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

end
