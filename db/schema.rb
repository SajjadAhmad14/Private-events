# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_30_090209) do

  create_table "event_attendences", force: :cascade do |t|
    t.integer "attended_event_id", null: false
    t.integer "event_attendence_id", null: false
    t.index ["attended_event_id"], name: "index_event_attendences_on_attended_event_id"
    t.index ["event_attendence_id"], name: "index_event_attendences_on_event_attendence_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "creator_id", null: false
    t.string "description"
    t.index ["creator_id"], name: "index_events_on_creator_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_name"
  end

end
