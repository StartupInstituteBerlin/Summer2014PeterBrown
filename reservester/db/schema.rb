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

ActiveRecord::Schema.define(version: 20140402160609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_restaurants", id: false, force: true do |t|
    t.integer "restaurant_id", null: false
    t.integer "category_id",   null: false
  end

  create_table "reservations", force: true do |t|
    t.string   "email"
    t.datetime "requested_date_time"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
    t.string   "status",              default: "Pending"
  end

  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id", using: :btree
  add_index "reservations", ["status"], name: "index_reservations_on_status", using: :btree

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
    t.string   "menu"
    t.integer  "user_id"
    t.time     "monday_open_at"
    t.time     "monday_close_at"
    t.time     "tuesday_open_at"
    t.time     "tuesday_close_at"
    t.time     "wednesday_open_at"
    t.time     "wednesday_close_at"
    t.time     "thursday_open_at"
    t.time     "thursday_close_at"
    t.time     "friday_open_at"
    t.time     "friday_close_at"
    t.time     "saturday_open_at"
    t.time     "saturday_close_at"
    t.time     "sunday_open_at"
    t.time     "sunday_close_at"
    t.integer  "max_reservations"
  end

  add_index "restaurants", ["friday_close_at"], name: "index_restaurants_on_friday_close_at", using: :btree
  add_index "restaurants", ["friday_open_at"], name: "index_restaurants_on_friday_open_at", using: :btree
  add_index "restaurants", ["monday_close_at"], name: "index_restaurants_on_monday_close_at", using: :btree
  add_index "restaurants", ["monday_open_at"], name: "index_restaurants_on_monday_open_at", using: :btree
  add_index "restaurants", ["saturday_close_at"], name: "index_restaurants_on_saturday_close_at", using: :btree
  add_index "restaurants", ["saturday_open_at"], name: "index_restaurants_on_saturday_open_at", using: :btree
  add_index "restaurants", ["sunday_close_at"], name: "index_restaurants_on_sunday_close_at", using: :btree
  add_index "restaurants", ["sunday_open_at"], name: "index_restaurants_on_sunday_open_at", using: :btree
  add_index "restaurants", ["thursday_close_at"], name: "index_restaurants_on_thursday_close_at", using: :btree
  add_index "restaurants", ["thursday_open_at"], name: "index_restaurants_on_thursday_open_at", using: :btree
  add_index "restaurants", ["tuesday_close_at"], name: "index_restaurants_on_tuesday_close_at", using: :btree
  add_index "restaurants", ["tuesday_open_at"], name: "index_restaurants_on_tuesday_open_at", using: :btree
  add_index "restaurants", ["user_id"], name: "index_restaurants_on_user_id", using: :btree
  add_index "restaurants", ["wednesday_close_at"], name: "index_restaurants_on_wednesday_close_at", using: :btree
  add_index "restaurants", ["wednesday_open_at"], name: "index_restaurants_on_wednesday_open_at", using: :btree

  create_table "stars", force: true do |t|
    t.datetime "date_time_created"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stars", ["restaurant_id"], name: "index_stars_on_restaurant_id", using: :btree
  add_index "stars", ["user_id"], name: "index_stars_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                   default: "patron"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
