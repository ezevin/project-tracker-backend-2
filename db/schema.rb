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

ActiveRecord::Schema.define(version: 2019_06_18_174813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventories", force: :cascade do |t|
    t.integer "project_id"
    t.string "label"
    t.float "price", default: 1.0
    t.text "description"
    t.string "image_url", default: "https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg"
    t.string "place_purchased"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "label"
    t.integer "price", default: 0
    t.text "description"
    t.string "image_url", default: "https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg"
    t.string "place_purchased"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
  end

  create_table "notes", force: :cascade do |t|
    t.integer "project_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_materials", force: :cascade do |t|
    t.integer "project_id"
    t.integer "material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
  end

  create_table "projects", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.date "start_date", default: -> { "CURRENT_TIMESTAMP" }
    t.date "due_date"
    t.float "budget"
    t.boolean "finished", default: false
    t.text "details"
    t.string "finished_image", default: "https://images-na.ssl-images-amazon.com/images/I/51UW1849rJL._SX466_.jpg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "researches", force: :cascade do |t|
    t.integer "project_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "to_do_lists", force: :cascade do |t|
    t.integer "project_id"
    t.string "item"
    t.boolean "complete", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "process_pic", default: "https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg"
  end

  create_table "user_materials", force: :cascade do |t|
    t.integer "user_id"
    t.integer "material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "profile_picture", default: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
    t.integer "age"
    t.text "about_me"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
