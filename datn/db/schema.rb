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

ActiveRecord::Schema.define(version: 20170521032121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
  end

  create_table "menus", force: :cascade do |t|
    t.string  "name"
    t.integer "restaurant_id"
    t.string  "picture"
    t.decimal "cost"
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id", using: :btree
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.float    "rate"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["restaurant_id"], name: "index_rates_on_restaurant_id", using: :btree
    t.index ["user_id"], name: "index_rates_on_user_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "description"
    t.string   "picture",       default: "default.png"
    t.string   "detail"
    t.string   "hotline"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "district_id"
    t.float    "averaged_rate", default: 0.0
    t.integer  "status",        default: 0
    t.integer  "highlight",     default: 0
    t.index ["category_id"], name: "index_restaurants_on_category_id", using: :btree
    t.index ["district_id"], name: "index_restaurants_on_district_id", using: :btree
    t.index ["user_id"], name: "index_restaurants_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "fullname"
    t.string   "avatar",     default: "default.png"
    t.integer  "role",       default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_foreign_key "menus", "restaurants"
  add_foreign_key "rates", "restaurants"
  add_foreign_key "rates", "users"
  add_foreign_key "restaurants", "categories"
  add_foreign_key "restaurants", "districts"
  add_foreign_key "restaurants", "users"
end
