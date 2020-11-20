ActiveRecord::Schema.define(version: 2020_11_20_110450) do

  create_table "events", force: :cascade do |t|
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "creator_id", null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "event_creator_id", null: false
    t.integer "created_event_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
