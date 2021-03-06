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

ActiveRecord::Schema.define(:version => 20141004014616) do

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
    t.text     "contest_title"
    t.text     "contest_url"
  end

  create_table "contests", :force => true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "link"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "organization_id"
    t.datetime "end_date"
    t.text     "subject"
  end

  create_table "experts", :force => true do |t|
    t.text     "job"
    t.text     "post"
    t.text     "degree"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "helps", :force => true do |t|
    t.text     "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hints", :force => true do |t|
    t.text     "subject"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "lead"
  end

  create_table "organizations", :force => true do |t|
    t.text     "title"
    t.text     "url"
    t.text     "org_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "logo"
  end

  create_table "pages", :force => true do |t|
    t.text     "title"
    t.text     "body"
    t.text     "slug"
    t.text     "section"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
