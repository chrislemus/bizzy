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

ActiveRecord::Schema.define(version: 2021_03_04_123302) do

  create_table "businesses", force: :cascade do |t|
    t.integer "review_id"
    t.integer "owner_id_id"
    t.string "hours"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id_id"], name: "index_businesses_on_owner_id_id"
    t.index ["review_id"], name: "index_businesses_on_review_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "description"
    t.integer "user_id_id", null: false
    t.integer "business_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id_id"], name: "index_reviews_on_business_id_id"
    t.index ["user_id_id"], name: "index_reviews_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "uid"
    t.string "provider"
    t.boolean "owner", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "businesses", "owner_ids"
  add_foreign_key "businesses", "reviews"
  add_foreign_key "reviews", "business_ids"
  add_foreign_key "reviews", "user_ids"
end
