# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_26_143742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drink_ingredients", force: :cascade do |t|
    t.bigint "drink_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drink_id"], name: "index_drink_ingredients_on_drink_id"
    t.index ["ingredient_id"], name: "index_drink_ingredients_on_ingredient_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "alcoholic"
    t.string "glass"
    t.text "instructions"
    t.string "image"
    t.string "ingredient_1"
    t.string "ingredient_2"
    t.string "ingredient_3"
    t.string "ingredient_4"
    t.string "ingredient_5"
    t.string "ingredient_6"
    t.string "ingredient_7"
    t.string "ingredient_8"
    t.string "ingredient_9"
    t.string "ingredient_10"
    t.string "ingredient_11"
    t.string "ingredient_12"
    t.string "ingredient_13"
    t.string "ingredient_14"
    t.string "ingredient_15"
    t.string "measurement_1"
    t.string "measurement_2"
    t.string "measurement_3"
    t.string "measurement_4"
    t.string "measurement_5"
    t.string "measurement_6"
    t.string "measurement_7"
    t.string "measurement_8"
    t.string "measurement_9"
    t.string "measurement_10"
    t.string "measurement_11"
    t.string "measurement_12"
    t.string "measurement_13"
    t.string "measurement_14"
    t.string "measurement_15"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "alcohol"
    t.integer "abv"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "drink_ingredients", "drinks"
  add_foreign_key "drink_ingredients", "ingredients"
end
