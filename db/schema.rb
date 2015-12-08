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

ActiveRecord::Schema.define(version: 20151208124233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "appartment_infrastructure_objects", id: false, force: :cascade do |t|
    t.integer "appartment_id"
    t.integer "infrastructure_object_id"
  end

  add_index "appartment_infrastructure_objects", ["appartment_id"], name: "appartment_id", using: :btree
  add_index "appartment_infrastructure_objects", ["infrastructure_object_id"], name: "infrastructure_object_id", using: :btree

  create_table "appartment_parkings", id: false, force: :cascade do |t|
    t.integer "appartment_id"
    t.integer "parking_id"
  end

  add_index "appartment_parkings", ["appartment_id"], name: "index_appartment_parkings_on_appartment_id", using: :btree
  add_index "appartment_parkings", ["parking_id"], name: "index_appartment_parkings_on_parking_id", using: :btree

  create_table "appartment_security_types", id: false, force: :cascade do |t|
    t.integer "appartment_id"
    t.integer "security_type_id"
  end

  add_index "appartment_security_types", ["appartment_id"], name: "index_appartment_security_types_on_appartment_id", using: :btree
  add_index "appartment_security_types", ["security_type_id"], name: "index_appartment_security_types_on_security_type_id", using: :btree

  create_table "appartment_territory_objects", id: false, force: :cascade do |t|
    t.integer "appartment_id"
    t.integer "territory_object_id"
  end

  add_index "appartment_territory_objects", ["appartment_id"], name: "index_appartment_territory_objects_on_appartment_id", using: :btree
  add_index "appartment_territory_objects", ["territory_object_id"], name: "index_appartment_territory_objects_on_territory_object_id", using: :btree

  create_table "appartments", force: :cascade do |t|
    t.integer  "user_id",                 null: false
    t.integer  "city_id",                 null: false
    t.integer  "street_id"
    t.integer  "lq_id"
    t.integer  "house_id"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "city_region_id"
    t.integer  "building_class_id"
    t.integer  "building_type_id"
    t.integer  "construction_phase_id"
    t.integer  "deal_type_id"
    t.integer  "electric_type_id"
    t.integer  "garbage_type_id"
    t.integer  "gas_type_id"
    t.integer  "heating_type_id"
    t.integer  "property_type_id"
    t.integer  "repair_type_id"
    t.integer  "room_type_id"
    t.integer  "sewage_type_id"
    t.integer  "traffic_object_id"
    t.integer  "water_type_id"
    t.integer  "traffic_object_distance"
    t.string   "lq_name"
    t.boolean  "is_new"
    t.string   "builder"
    t.string   "finish_date_quartal"
    t.integer  "finish_date_year"
    t.datetime "finished_at"
    t.boolean  "is_second"
    t.datetime "build_at"
    t.boolean  "is_flat"
    t.boolean  "is_flatpart"
    t.boolean  "is_studio"
    t.boolean  "is_freeplan"
    t.boolean  "is_smallfamily"
    t.integer  "room_count"
    t.integer  "square"
    t.integer  "living_area"
    t.integer  "kitchen_area"
    t.string   "room_area"
    t.integer  "loggia"
    t.integer  "loggia_area"
    t.boolean  "loggia_window"
    t.integer  "balcony"
    t.integer  "balcony_area"
    t.boolean  "balcony_window"
    t.integer  "pantry"
    t.integer  "pantry_area"
    t.integer  "sauna"
    t.integer  "pool"
    t.integer  "pool_area"
    t.integer  "wc_fused"
    t.integer  "separate_bathroom"
    t.string   "architectural_style"
    t.integer  "elevator"
    t.integer  "service_elevator"
    t.boolean  "parking_include"
    t.boolean  "is_fenced"
    t.integer  "price"
    t.boolean  "is_doc_ready"
    t.boolean  "allow_bargaining"
    t.boolean  "allow_brokers"
    t.boolean  "allow_mortgage"
    t.integer  "total_floor"
    t.integer  "flat_level"
    t.integer  "room_height"
    t.integer  "floor"
    t.integer  "windows_type_id"
    t.integer  "building_state_id"
  end

  create_table "building_classes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "building_states", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "building_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 20, null: false
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "cities", ["name"], name: "index_cities_on_name", unique: true, using: :btree

  create_table "city_regions", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "city_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "construction_phases", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "deal_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "electric_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "garbage_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "gas_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "heating_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "houses", force: :cascade do |t|
    t.integer  "street_id"
    t.integer  "lq_id"
    t.string   "number_street"
    t.string   "number_lq"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "index"
  end

  create_table "infrastructure_objects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lqs", force: :cascade do |t|
    t.integer  "city_id",                   null: false
    t.string   "number_code",    limit: 20, null: false
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "city_region_id"
  end

  create_table "parkings", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "property_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "repair_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "security_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sewage_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "streets", force: :cascade do |t|
    t.integer  "city_id",               null: false
    t.string   "name",       limit: 60, null: false
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "territory_objects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "traffic_objects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "water_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "windows_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
