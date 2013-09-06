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

ActiveRecord::Schema.define(version: 20130906014441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.integer  "experience"
    t.string   "show_type"
    t.text     "current_location"
    t.integer  "base_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "show_requests", force: true do |t|
    t.date     "show_date"
    t.time     "show_time"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
    t.integer  "client_id"
  end

  add_index "show_requests", ["client_id", "profile_id"], name: "index_show_requests_on_client_id_and_profile_id", using: :btree
  add_index "show_requests", ["client_id"], name: "index_show_requests_on_client_id", using: :btree
  add_index "show_requests", ["profile_id", "client_id"], name: "index_show_requests_on_profile_id_and_client_id", using: :btree
  add_index "show_requests", ["profile_id"], name: "index_show_requests_on_profile_id", using: :btree

end
