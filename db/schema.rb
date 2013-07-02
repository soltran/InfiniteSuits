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

ActiveRecord::Schema.define(:version => 20130702205757) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_url"
  end

  create_table "items", :force => true do |t|
    t.integer  "seller_id"
    t.decimal  "current_price"
    t.decimal  "original_price"
    t.string   "brand"
    t.string   "size"
    t.string   "item_condition"
    t.string   "delivery_type"
    t.text     "additional_info"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "category_id"
  end

  add_index "items", ["category_id"], :name => "index_items_on_category_id"
  add_index "items", ["current_price"], :name => "index_items_on_current_price"
  add_index "items", ["item_condition"], :name => "index_items_on_item_condition"
  add_index "items", ["seller_id"], :name => "index_items_on_seller_id"
  add_index "items", ["size"], :name => "index_items_on_size"

  create_table "photos", :force => true do |t|
    t.integer  "item_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "item_photo_file_name"
    t.string   "item_photo_content_type"
    t.integer  "item_photo_file_size"
    t.datetime "item_photo_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end