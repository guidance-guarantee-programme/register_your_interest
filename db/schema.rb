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

ActiveRecord::Schema.define(version: 20150311115125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schema_info", id: false, force: :cascade do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.text     "email"
    t.text     "name"
    t.text     "age"
    t.text     "retirement_preference"
    t.text     "pension_type"
    t.boolean  "channel_preference_web"
    t.boolean  "channel_preference_phone"
    t.boolean  "channel_preference_face_to_face"
    t.text     "wishlist"
    t.text     "region"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "phone"
  end

end
