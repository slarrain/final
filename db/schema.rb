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

ActiveRecord::Schema.define(version: 0) do

  create_table "attendances", force: :cascade do |t|
    t.integer "user_id"
    t.date    "date"
  end

  add_index "attendances", ["user_id"], name: "index_attendances_on_user_id"

  create_table "foods", force: :cascade do |t|
    t.text "name"
    t.text "photo_url"
    t.text "comments"
  end

  create_table "menus", force: :cascade do |t|
    t.date    "date"
    t.integer "food_id"
    t.boolean "lunch",    default: false
    t.text    "comments"
  end

  add_index "menus", ["food_id"], name: "index_menus_on_food_id"

  create_table "scores", force: :cascade do |t|
    t.integer "food_id"
    t.integer "user_id"
    t.integer "value"
    t.boolean "dont_like", default: false
  end

  add_index "scores", ["food_id"], name: "index_scores_on_food_id"
  add_index "scores", ["user_id"], name: "index_scores_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.integer "age"
    t.text    "email"
    t.text    "password_digest"
  end

end
