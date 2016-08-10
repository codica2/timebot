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

ActiveRecord::Schema.define(version: 20160808110903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_entries", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "date"
    t.string   "time"
    t.integer  "minutes"
    t.string   "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "uid"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "is_speaking", default: false
    t.index ["uid"], name: "index_users_on_uid", using: :btree
  end

  add_foreign_key "time_entries", "projects"
  add_foreign_key "time_entries", "users"
end
