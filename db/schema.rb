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

ActiveRecord::Schema.define(version: 20160522175754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "average_caches", force: :cascade do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "avg",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "overall_averages", force: :cascade do |t|
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "overall_avg",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", force: :cascade do |t|
    t.string   "itinerary"
    t.string   "duration"
    t.decimal  "price"
    t.integer  "rooms"
    t.integer  "people"
    t.string   "room_type"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "avatar"
    t.integer  "vendor_id"
    t.integer  "ship_id"
    t.date     "start_date"
    t.date     "end_date"
    t.date     "booked_at"
  end

  add_index "packages", ["ship_id"], name: "index_packages_on_ship_id", using: :btree
  add_index "packages", ["user_id"], name: "index_packages_on_user_id", using: :btree
  add_index "packages", ["vendor_id"], name: "index_packages_on_vendor_id", using: :btree

  create_table "rates", force: :cascade do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type", using: :btree
  add_index "rates", ["rater_id"], name: "index_rates_on_rater_id", using: :btree

  create_table "rating_caches", force: :cascade do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            null: false
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "ship_id"
    t.integer  "rating"
  end

  add_index "reviews", ["ship_id"], name: "index_reviews_on_ship_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.integer  "tonnage"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "vendor_id"
    t.integer  "length_in_feet"
    t.integer  "guest_capacity"
    t.integer  "onboard_crew"
    t.string   "avatar"
    t.text     "activities"
    t.text     "dining"
    t.integer  "rating"
  end

  add_index "ships", ["vendor_id"], name: "index_ships_on_vendor_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "country"
    t.string   "address1"
    t.string   "address2"
    t.string   "region"
    t.string   "postal_code"
    t.string   "tel"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "vendors", force: :cascade do |t|
    t.string   "company"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
  end

  add_foreign_key "packages", "ships"
  add_foreign_key "packages", "users"
  add_foreign_key "packages", "vendors"
  add_foreign_key "reviews", "ships"
  add_foreign_key "reviews", "users"
  add_foreign_key "ships", "vendors"
end
