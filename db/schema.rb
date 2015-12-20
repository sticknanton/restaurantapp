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

ActiveRecord::Schema.define(version: 20151220193537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "category"
    t.decimal  "price"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "party_id"
    t.integer  "menu_item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "done"
  end

  add_index "orders", ["menu_item_id"], name: "index_orders_on_menu_item_id", using: :btree
  add_index "orders", ["party_id"], name: "index_orders_on_party_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.integer  "guest_num"
    t.integer  "table_num"
    t.integer  "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "closed"
  end

  create_table "servers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "menu_items"
  add_foreign_key "orders", "parties"
end
