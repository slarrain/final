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

  create_table "desserts", force: :cascade do |t|
    t.text "name"
  end

  create_table "dishes", force: :cascade do |t|
    t.text "name"
  end

  create_table "menus", force: :cascade do |t|
    t.date    "date"
    t.integer "dish_id"
    t.integer "dessert_id"
  end

  add_index "menus", ["dessert_id"], name: "index_menus_on_dessert_id"
  add_index "menus", ["dish_id"], name: "index_menus_on_dish_id"

  create_table "score_desserts", force: :cascade do |t|
    t.integer "dessert_id"
    t.integer "user_id"
    t.integer "value",      default: 0
  end

  add_index "score_desserts", ["dessert_id"], name: "index_score_desserts_on_dessert_id"
  add_index "score_desserts", ["user_id"], name: "index_score_desserts_on_user_id"

  create_table "score_dishes", force: :cascade do |t|
    t.integer "dish_id"
    t.integer "user_id"
    t.integer "value",   default: 0
  end

  add_index "score_dishes", ["dish_id"], name: "index_score_dishes_on_dish_id"
  add_index "score_dishes", ["user_id"], name: "index_score_dishes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.integer "age"
    t.text    "email"
    t.text    "password"
  end

end
