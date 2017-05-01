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

ActiveRecord::Schema.define(version: 20170501010614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "food_catagory"
    t.string   "img_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "category_connectings", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "recipe_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_category_connectings_on_category_id", using: :btree
    t.index ["recipe_id"], name: "index_category_connectings_on_recipe_id", using: :btree
  end

  create_table "did_try_connectings", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_did_try_connectings_on_recipe_id", using: :btree
    t.index ["user_id"], name: "index_did_try_connectings_on_user_id", using: :btree
  end

  create_table "directions", force: :cascade do |t|
    t.string  "recipe_direction"
    t.integer "recipe_id"
    t.index ["recipe_id"], name: "index_directions_on_recipe_id", using: :btree
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "list"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title",         null: false
    t.string   "img_url"
    t.string   "cooking_time",  null: false
    t.string   "cooking_level", null: false
    t.boolean  "allow_reviews"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_recipes_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "img_url"
    t.integer  "rating"
    t.string   "comment"
    t.integer  "recipe_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_reviews_on_recipe_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "will_try_connectings", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_will_try_connectings_on_recipe_id", using: :btree
    t.index ["user_id"], name: "index_will_try_connectings_on_user_id", using: :btree
  end

  add_foreign_key "category_connectings", "categories"
  add_foreign_key "category_connectings", "recipes"
  add_foreign_key "did_try_connectings", "recipes"
  add_foreign_key "did_try_connectings", "users"
  add_foreign_key "directions", "recipes"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "recipes", "users"
  add_foreign_key "reviews", "recipes"
  add_foreign_key "reviews", "users"
  add_foreign_key "will_try_connectings", "recipes"
  add_foreign_key "will_try_connectings", "users"
end
