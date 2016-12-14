# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161214030958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areafeatures", force: :cascade do |t|
    t.string   "feature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lodgingfeatures", force: :cascade do |t|
    t.string   "feature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lodgingtypes", force: :cascade do |t|
    t.string   "lodging"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "comment",           null: false
    t.integer  "price"
    t.string   "currency"
    t.integer  "duration"
    t.string   "duration_type"
    t.integer  "stay_month"
    t.integer  "stay_year"
    t.boolean  "discount"
    t.string   "discount_amount"
    t.integer  "download"
    t.integer  "upload"
    t.string   "speedtest"
    t.boolean  "consistent"
    t.boolean  "return"
    t.integer  "user_id"
    t.integer  "submission_id"
    t.integer  "rating"
    t.integer  "kitchen"
    t.integer  "lodging_amenities"
    t.integer  "bed"
    t.integer  "workspace"
    t.integer  "value"
    t.integer  "internet"
    t.integer  "area_amenities"
    t.integer  "landlord"
    t.integer  "safety"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "submission_link"
    t.string   "title"
    t.string   "location"
    t.string   "lodgingtype"
    t.string   "bedrooms"
    t.string   "bathrooms"
    t.string   "lodgingfeatures"
    t.string   "areafeatures"
    t.string   "img1"
    t.string   "img2"
    t.string   "img3"
    t.string   "publish",         default: "no"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
