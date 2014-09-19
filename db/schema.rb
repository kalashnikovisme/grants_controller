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

ActiveRecord::Schema.define(:version => 20140919214725) do

  create_table "contest_requests", :force => true do |t|
    t.text     "goal"
    t.text     "tasks"
    t.text     "annotation"
    t.text     "problem"
    t.text     "audience"
    t.text     "real_methods"
    t.text     "results"
    t.text     "multiplicativity"
    t.text     "plan"
    t.text     "estimates"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "contests", :force => true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "link"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "grant_operator_id"
  end

  create_table "experts", :force => true do |t|
    t.text     "job"
    t.text     "post"
    t.text     "degree"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "grant_operators", :force => true do |t|
    t.text     "title"
    t.text     "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "helps", :force => true do |t|
    t.text     "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requests", :force => true do |t|
    t.text     "goal"
    t.text     "tasks"
    t.text     "annotation"
    t.text     "problem"
    t.text     "audience"
    t.text     "real_methods"
    t.text     "results"
    t.text     "multiplicativity"
    t.text     "plan"
    t.text     "estimates"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.text     "email"
    t.text     "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "role"
    t.text     "first_name"
    t.text     "middle_name"
    t.text     "last_name"
    t.text     "avatar"
  end

end
