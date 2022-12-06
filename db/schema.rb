# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_06_163154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.text "about"
    t.string "image"
    t.bigint "owner_id", null: false
    t.boolean "sunday_morning"
    t.boolean "sunday_afternoon"
    t.boolean "sunday_night"
    t.boolean "monday_morning"
    t.boolean "monday_afternoon"
    t.boolean "monday_night"
    t.boolean "tuesday_morning"
    t.boolean "tuesday_afternoon"
    t.boolean "tuesday_night"
    t.boolean "wednesday_morning"
    t.boolean "wednesday_afternoon"
    t.boolean "wednesday_night"
    t.boolean "thursday_morning"
    t.boolean "thursday_afternoon"
    t.boolean "thursday_night"
    t.boolean "friday_morning"
    t.boolean "friday_afternoon"
    t.boolean "friday_night"
    t.boolean "saturday_morning"
    t.boolean "saturday_afternoon"
    t.boolean "saturday_night"
    t.string "neighborhood"
    t.integer "walks_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_dogs_on_owner_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "sender_id", null: false
    t.bigint "recipient_id", null: false
    t.text "content"
    t.bigint "walk_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipient_id"], name: "index_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
    t.index ["walk_id"], name: "index_messages_on_walk_id"
  end

  create_table "users", force: :cascade do |t|
    t.citext "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.citext "username"
    t.boolean "sunday_morning"
    t.boolean "sunday_afternoon"
    t.boolean "sunday_night"
    t.boolean "monday_morning"
    t.boolean "monday_afternoon"
    t.boolean "monday_night"
    t.boolean "tuesday_morning"
    t.boolean "tuesday_afternoon"
    t.boolean "tuesday_night"
    t.boolean "wednesday_morning"
    t.boolean "wednesday_afternoon"
    t.boolean "wednesday_night"
    t.boolean "thursday_morning"
    t.boolean "thursday_afternoon"
    t.boolean "thursday_night"
    t.boolean "friday_morning"
    t.boolean "friday_afternoon"
    t.boolean "friday_night"
    t.boolean "saturday_morning"
    t.boolean "saturday_afternoon"
    t.boolean "saturday_night"
    t.text "bio"
    t.string "image"
    t.string "neighborhood"
    t.integer "walks_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "walks", force: :cascade do |t|
    t.bigint "dog_id", null: false
    t.bigint "walker_id", null: false
    t.boolean "complete"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dog_id"], name: "index_walks_on_dog_id"
    t.index ["walker_id"], name: "index_walks_on_walker_id"
  end

  add_foreign_key "dogs", "users", column: "owner_id"
  add_foreign_key "messages", "users", column: "recipient_id"
  add_foreign_key "messages", "users", column: "sender_id"
  add_foreign_key "messages", "walks"
  add_foreign_key "walks", "dogs"
  add_foreign_key "walks", "users", column: "walker_id"
end
