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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120505180403) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categorizations", :force => true do |t|
    t.integer  "speciality_id"
    t.integer  "university_id"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "category_translations", :force => true do |t|
    t.integer  "category_id"
    t.string   "locale"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "category_translations", ["category_id"], :name => "index_category_translations_on_category_id"
  add_index "category_translations", ["locale"], :name => "index_category_translations_on_locale"

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "comment_text"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "university_id"
    t.integer  "user_id"
  end

  create_table "image_translations", :force => true do |t|
    t.integer  "image_id"
    t.string   "locale"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "image_translations", ["image_id"], :name => "index_image_translations_on_image_id"
  add_index "image_translations", ["locale"], :name => "index_image_translations_on_locale"

  create_table "images", :force => true do |t|
    t.string   "photo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "university_id"
    t.string   "description"
    t.boolean  "logo"
  end

  create_table "questions", :force => true do |t|
    t.string   "title"
    t.integer  "test_name_id"
    t.string   "variant_1"
    t.string   "variant_2"
    t.string   "correct"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "variant_3"
    t.string   "variant_4"
  end

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.integer  "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "specialities", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "university_id"
    t.integer  "category_id"
    t.string   "cipher"
  end

  create_table "speciality_translations", :force => true do |t|
    t.integer  "speciality_id"
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "speciality_translations", ["locale"], :name => "index_speciality_translations_on_locale"
  add_index "speciality_translations", ["speciality_id"], :name => "index_speciality_translations_on_speciality_id"

  create_table "test_names", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "universities", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "city_id"
  end

  create_table "university_translations", :force => true do |t|
    t.integer  "university_id"
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "university_translations", ["locale"], :name => "index_university_translations_on_locale"
  add_index "university_translations", ["university_id"], :name => "index_university_translations_on_university_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
