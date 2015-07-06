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

ActiveRecord::Schema.define(version: 20150706212808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_files", force: :cascade do |t|
    t.integer  "office_id"
    t.integer  "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "car_files", ["car_id"], name: "index_car_files_on_car_id", using: :btree
  add_index "car_files", ["office_id"], name: "index_car_files_on_office_id", using: :btree

  create_table "cars", force: :cascade do |t|
    t.string   "plate"
    t.string   "brand"
    t.string   "model"
    t.string   "year"
    t.string   "km"
    t.integer  "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cars", ["owner_id"], name: "index_cars_on_owner_id", using: :btree

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "workshop_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "offices", ["workshop_id"], name: "index_offices_on_workshop_id", using: :btree

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.string   "rut"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer  "car_file_id"
    t.date     "entrance"
    t.string   "details"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "records", ["car_file_id"], name: "index_records_on_car_file_id", using: :btree

  create_table "workshops", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "car_files", "cars"
  add_foreign_key "car_files", "offices"
  add_foreign_key "cars", "owners"
  add_foreign_key "offices", "workshops"
  add_foreign_key "records", "car_files"
end
