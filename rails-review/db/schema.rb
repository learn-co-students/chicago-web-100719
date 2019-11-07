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

ActiveRecord::Schema.define(version: 2019_11_07_193955) do

  create_table "bed_rentals", force: :cascade do |t|
    t.integer "pet_bed_id"
    t.integer "cat_dog_id"
  end

  create_table "cat_dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
  end

  create_table "pet_beds", force: :cascade do |t|
    t.string "size"
    t.string "condition"
  end

  create_table "poo_bags", force: :cascade do |t|
    t.string "brand"
    t.integer "volume"
    t.integer "cat_dog_id"
  end

end
