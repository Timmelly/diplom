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

ActiveRecord::Schema.define(version: 20161215203849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "computers", force: :cascade do |t|
    t.string   "name",          limit: 10, null: false
    t.float    "x",                        null: false, array: true
    t.float    "y",                        null: false, array: true
    t.string   "ip",            limit: 20, null: false
    t.string   "mac_address",   limit: 20, null: false
    t.text     "specification",            null: false
    t.integer  "w_table_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["w_table_id"], name: "index_computers_on_w_table_id", using: :btree
  end

  create_table "geometry_classes", force: :cascade do |t|
    t.string   "room",       limit: 10, null: false
    t.string   "bilding",    limit: 5,  null: false
    t.integer  "floor",                 null: false
    t.float    "x",                     null: false, array: true
    t.float    "y",                     null: false, array: true
    t.string   "ip"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "role_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.index ["activation_token"], name: "index_users_on_activation_token", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  end

  create_table "w_tables", force: :cascade do |t|
    t.integer  "geometry_classes_id"
    t.bigint   "front_side",          null: false
    t.float    "x",                   null: false, array: true
    t.float    "y",                   null: false, array: true
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["geometry_classes_id"], name: "index_w_tables_on_geometry_classes_id", using: :btree
  end

  add_foreign_key "computers", "w_tables"
  add_foreign_key "w_tables", "geometry_classes", column: "geometry_classes_id"
end
