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

ActiveRecord::Schema.define(version: 20151124222028) do

  create_table "donations", force: :cascade do |t|
    t.string   "name"
    t.string   "type_of_donation"
    t.string   "phone"
    t.string   "mail"
    t.integer  "institution_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "donations", ["institution_id"], name: "index_donations_on_institution_id"

  create_table "institutions", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "email"
    t.string   "address"
    t.string   "postal_code"
    t.string   "neighborhood"
    t.integer  "phone"
    t.string   "contact"
    t.text     "work"
    t.string   "site"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "inactive"
    t.boolean  "collect_donations"
  end

end
