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

ActiveRecord::Schema.define(version: 20180426011731) do

  create_table "house_owners", force: :cascade do |t|
    t.string "listing"
    t.string "name"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_house_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_house_owners_on_reset_password_token", unique: true
  end

  create_table "house_seekers", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.integer "min_price"
    t.integer "max_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_house_seekers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_house_seekers_on_reset_password_token", unique: true
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "address"
    t.integer "price"
    t.string "lease_term"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "house_owner_id"
    t.integer "house_seeker_id"
    t.string "photo"
    t.index ["house_owner_id"], name: "index_listings_on_house_owner_id"
    t.index ["house_seeker_id"], name: "index_listings_on_house_seeker_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "houseowner"
    t.integer "houseseeker"
    t.integer "house"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
