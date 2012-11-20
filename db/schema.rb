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

ActiveRecord::Schema.define(:version => 20121117102931) do

  create_table "galleries", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "sub_page_id"
    t.integer  "page_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
    t.boolean  "publish"
  end

  add_index "galleries", ["slug"], :name => "index_galleries_on_slug", :unique => true

  create_table "images", :force => true do |t|
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "caption"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.boolean  "link_image"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "slug"
    t.boolean  "publish"
    t.integer  "parent_id"
    t.string   "parent_branch"
    t.string   "link_color"
    t.string   "background_color"
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "friendly_title"
  end

  add_index "pages", ["slug"], :name => "index_pages_on_slug", :unique => true

  create_table "sub_pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "page_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
    t.boolean  "publish"
  end

  add_index "sub_pages", ["slug"], :name => "index_sub_pages_on_slug", :unique => true

  create_table "thumbs", :force => true do |t|
    t.string   "uid"
    t.string   "job"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "videos", :force => true do |t|
    t.integer  "page_id"
    t.text     "video"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
