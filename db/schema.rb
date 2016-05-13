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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160512200221) do
=======
ActiveRecord::Schema.define(version: 20160512173827) do

  create_table "packages", force: :cascade do |t|
    t.string   "itinerary"
    t.string   "ship"
    t.string   "dates"
    t.string   "duration"
    t.decimal  "price"
    t.integer  "rooms"
    t.integer  "people"
    t.string   "room_type"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "packages", ["user_id"], name: "index_packages_on_user_id"
>>>>>>> db094e4d3c93a949879614c8e42ed555b7f939d5

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
<<<<<<< HEAD
    t.string   "tel"
=======
    t.integer  "tel"
>>>>>>> db094e4d3c93a949879614c8e42ed555b7f939d5
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

<<<<<<< HEAD
=======
  create_table "vendors", force: :cascade do |t|
    t.string   "company"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
  end

>>>>>>> db094e4d3c93a949879614c8e42ed555b7f939d5
end
