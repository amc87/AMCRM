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

ActiveRecord::Schema.define(version: 20160627111008) do

  create_table "buyers", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "nif"
    t.string   "email"
    t.string   "telephone1"
    t.string   "telephone2"
    t.string   "idioma"
    t.string   "adress"
    t.string   "city"
    t.string   "country"
    t.string   "postal_code"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "buyers", ["user_id"], name: "index_buyers_on_user_id"

  create_table "portfolios", force: :cascade do |t|
    t.integer  "property_id"
    t.integer  "seller_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "portfolios", ["property_id"], name: "index_portfolios_on_property_id"
  add_index "portfolios", ["seller_id"], name: "index_portfolios_on_seller_id"

  create_table "properties", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "description"
    t.string   "size"
    t.string   "type"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "operation_type"
    t.string   "extras"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id"

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "nif"
    t.string   "email"
    t.string   "telephone1"
    t.string   "telephone2"
    t.string   "idioma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "sellers", ["user_id"], name: "index_sellers_on_user_id"

  create_table "users", force: :cascade do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
