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

ActiveRecord::Schema.define(:version => 20120605014351) do

  create_table "products", :force => true do |t|
    t.string   "lcbo_id"
    t.string   "image_url"
    t.string   "image_thumb_url"
    t.string   "name"
    t.string   "category"
    t.string   "region"
    t.string   "price"
    t.integer  "rating"
    t.text     "description",     :limit => 255
    t.string   "byline"
    t.string   "byline_link"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "reviews", :force => true do |t|
    t.string   "email"
    t.integer  "score"
    t.text     "comment"
    t.integer  "lcbo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "rating"
    t.integer  "product_id"
  end

end
