ActiveRecord::Schema.define(version: 2020_11_21_180125) do

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "creator_id", null: false
    t.date "created_on"
    t.string "description"
    t.index ["creator_id"], name: "index_events_on_creator_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "event_attendee_id", null: false
    t.integer "attended_event_id", null: false
    t.index ["attended_event_id"], name: "index_invitations_on_attended_event_id"
    t.index ["event_attendee_id"], name: "index_invitations_on_event_attendee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
