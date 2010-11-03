# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101103184249) do

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.string   "author",     :null => false
    t.string   "email",      :null => false
    t.string   "url"
    t.string   "title"
    t.string   "body",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.string   "title",      :limit => 128,                   :null => false
    t.text     "body",                                        :null => false
    t.boolean  "published",                 :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",      :limit => 32,                    :null => false
    t.string   "real_name",  :limit => 128,                   :null => false
    t.string   "email",      :limit => 128,                   :null => false
    t.string   "password",   :limit => 128,                   :null => false
    t.boolean  "enabled",                   :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
