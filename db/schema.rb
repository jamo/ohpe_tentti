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

ActiveRecord::Schema.define(:version => 20130414232239) do

  create_table "answers", :force => true do |t|
    t.string   "nick"
    t.string   "email"
    t.text     "other"
    t.string   "key"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.boolean  "deprecated"
  end

  add_index "answers", ["key"], :name => "index_answers_on_key"

  create_table "jatkos", :force => true do |t|
    t.string   "name"
    t.string   "nick"
    t.string   "continue"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "key"
    t.boolean  "tira",       :default => false
  end

  add_index "jatkos", ["key"], :name => "index_jatkos_on_key"

  create_table "kisallis", :force => true do |t|
    t.string   "name"
    t.string   "opnro"
    t.string   "sposti"
    t.string   "opintopisteita"
    t.text     "miksi"
    t.decimal  "opintojen_ka"
    t.string   "aiemmin"
    t.text     "miksiSina"
    t.text     "mitaOdotat"
    t.text     "muuta"
    t.text     "lempiolut"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.boolean  "ohjaaja"
    t.boolean  "kisalli"
    t.boolean  "tira"
    t.boolean  "deprecated",       :default => false
    t.boolean  "ohpe",             :default => false
    t.boolean  "ohja",             :default => false
    t.boolean  "ohpes",            :default => false
    t.boolean  "ohjas",            :default => false
    t.string   "key"
    t.boolean  "syksyOhpeOhjaaja", :default => false
    t.boolean  "syksyOhjaOhjaaja", :default => false
  end

  add_index "kisallis", ["key"], :name => "index_kisallis_on_key"

  create_table "questions", :force => true do |t|
    t.string "nick"
    t.string "email"
    t.text   "other"
    t.string "key"
  end

  add_index "questions", ["key"], :name => "index_questions_on_key"

  create_table "sessions", :force => true do |t|
    t.string   "home"
    t.string   "login"
    t.string   "logout"
    t.string   "profile"
    t.string   "settings"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
    t.boolean  "super_admin",        :default => false
    t.boolean  "disabled",           :default => false
    t.datetime "last_login"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

end
