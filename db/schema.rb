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

ActiveRecord::Schema.define(version: 20160717101731) do

  create_table "admins", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string   "brand_name"
    t.integer  "categories_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "brands", ["categories_id"], name: "index_brands_on_categories_id"

  create_table "buyers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "phone_no"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "orders", force: :cascade do |t|
    t.integer  "products_id"
    t.integer  "brands_id"
    t.integer  "quantity"
    t.integer  "total_amount"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "orders", ["brands_id"], name: "index_orders_on_brands_id"
  add_index "orders", ["products_id"], name: "index_orders_on_products_id"

  create_table "products", force: :cascade do |t|
    t.text     "product_name"
    t.integer  "product_price"
    t.integer  "quantity"
    t.string   "item_condition"
    t.string   "pic_1"
    t.string   "pic_2"
    t.string   "pic_3"
    t.string   "pic_4"
    t.string   "demo_video"
    t.integer  "subcategories_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "buyers_id"
  end

  add_index "products", ["buyers_id"], name: "index_products_on_buyers_id"
  add_index "products", ["subcategories_id"], name: "index_products_on_subcategories_id"

  create_table "sellers", force: :cascade do |t|
    t.string   "store_name"
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.string   "phone_no"
    t.text     "address_1"
    t.text     "address_2"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slider_subcategory_display_pics", force: :cascade do |t|
    t.string   "pic"
    t.string   "page_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "subcategory_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "categories_id"
  end

  add_index "subcategories", ["categories_id"], name: "index_subcategories_on_categories_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
