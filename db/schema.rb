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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171201062958) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "location"
    t.boolean  "has_seen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "appointments", ["post_id"], name: "index_appointments_on_post_id"
  add_index "appointments", ["user_id"], name: "index_appointments_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "image"
    t.integer  "price"
    t.string   "subject"
    t.string   "description"
    t.string   "category"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "qualifications", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "post_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "qualifications", ["post_id"], name: "index_qualifications_on_post_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "prof_pic"
    t.integer  "rating"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
