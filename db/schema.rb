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

ActiveRecord::Schema.define(version: 20131125234413) do

  create_table "chats", force: true do |t|
    t.integer  "question_friend_id"
    t.string   "message"
    t.boolean  "is_from"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chats", ["question_friend_id"], name: "index_chats_on_question_friend_id"

  create_table "expert_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fav_groups", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fav_groups", ["user_id"], name: "index_fav_groups_on_user_id"

  create_table "question_friends", force: true do |t|
    t.integer  "question_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_friends", ["question_id"], name: "index_question_friends_on_question_id"

  create_table "question_images", force: true do |t|
    t.integer  "question_id"
    t.string   "full_size"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_images", ["question_id"], name: "index_question_images_on_question_id"

  create_table "questions", force: true do |t|
    t.integer  "shopper_id"
    t.integer  "question_image_id"
    t.integer  "question_friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["question_friend_id"], name: "index_questions_on_question_friend_id"
  add_index "questions", ["question_image_id"], name: "index_questions_on_question_image_id"

  create_table "ratings", force: true do |t|
    t.string   "name"
    t.integer  "ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_expert_categories", force: true do |t|
    t.integer  "user_id"
    t.integer  "expert_category_id"
    t.integer  "rating_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_expert_categories", ["expert_category_id"], name: "index_user_expert_categories_on_expert_category_id"
  add_index "user_expert_categories", ["rating_id"], name: "index_user_expert_categories_on_rating_id"
  add_index "user_expert_categories", ["user_id"], name: "index_user_expert_categories_on_user_id"

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.integer  "phone"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
