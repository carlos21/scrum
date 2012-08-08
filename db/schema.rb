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

ActiveRecord::Schema.define(:version => 20120808155218) do

  create_table "activities", :force => true do |t|
    t.string   "description",  :limit => 100
    t.integer  "developer_id"
    t.integer  "pbi_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "developers", :force => true do |t|
    t.string   "name",       :limit => 20
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "pbi_sprint_assignments", :force => true do |t|
    t.integer  "sprint_id"
    t.integer  "pbi_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pbis", :force => true do |t|
    t.string   "description",  :limit => 300
    t.integer  "story_points"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "sprint_id"
  end

  create_table "sprints", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "description", :limit => 300
    t.string   "goal",        :limit => 300
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end
