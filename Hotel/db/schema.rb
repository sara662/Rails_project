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

ActiveRecord::Schema.define(:version => 20140519161438) do

  create_table "branch_comments", :force => true do |t|
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "branch_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "branches", :force => true do |t|
    t.string   "branch_name"
    t.string   "branch_tel"
    t.string   "branch_address"
    t.string   "branch_photo"
    t.integer  "myhotel_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "myhotels", :force => true do |t|
    t.string   "hotel_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roomreserves", :force => true do |t|
    t.date     "check_in"
    t.date     "check_out"
    t.integer  "user_id"
    t.integer  "room_id"
    t.integer  "branch_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rooms", :force => true do |t|
    t.float    "room_price"
    t.integer  "room_max"
    t.string   "room_photo"
    t.string   "room_desc"
    t.string   "room_type"
    t.integer  "branch_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "salt"
    t.string   "encrypted_password",    :limit => 200
  end

end
