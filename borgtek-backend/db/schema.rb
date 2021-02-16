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

ActiveRecord::Schema.define(version: 2021_02_15_205919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "computer_parts", force: :cascade do |t|
    t.integer "computer_id"
    t.integer "part_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "computer_receipts", force: :cascade do |t|
    t.integer "receipt_id"
    t.integer "computer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "computers", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "mobo"
    t.string "cpu"
    t.string "ram"
    t.string "gpu"
    t.string "hdd"
    t.string "case"
    t.string "psu"
    t.string "ssd"
    t.string "purpose"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parts", force: :cascade do |t|
    t.float "price"
    t.string "category"
    t.string "name"
    t.string "brand"
    t.string "model"
    t.integer "capacity"
    t.integer "rpm"
    t.integer "cache"
    t.string "interface"
    t.string "memory_type"
    t.integer "speed"
    t.integer "amount"
    t.string "type"
    t.string "color"
    t.string "material"
    t.boolean "power"
    t.float "weight"
    t.float "dimension_length"
    t.float "dimension_width"
    t.float "dimension_height"
    t.integer "ports"
    t.integer "expansion_slots"
    t.integer "max_power"
    t.integer "fans"
    t.boolean "over_voltage_protection"
    t.boolean "over_load_protection"
    t.integer "input_voltage"
    t.integer "input_current"
    t.string "socket_type"
    t.string "chipset"
    t.integer "number_of_memory_slots"
    t.integer "max_memory"
    t.string "channel_supported"
    t.string "type_expansion_slot"
    t.string "form_factor"
    t.string "processor_type"
    t.string "generation"
    t.integer "core_name"
    t.float "clock_speed"
    t.integer "cores"
    t.integer "memory_clock"
    t.integer "memory_size"
    t.integer "power_consumption"
    t.integer "storage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.float "total_price", default: 0.0
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.integer "age"
    t.string "email"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
