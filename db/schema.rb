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

ActiveRecord::Schema.define(version: 20161129145254) do

  create_table "finalopinions", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "finalphase_id"
    t.integer  "music_id"
  end

  add_index "finalopinions", ["finalphase_id"], name: "index_finalopinions_on_finalphase_id"
  add_index "finalopinions", ["music_id"], name: "index_finalopinions_on_music_id"

  create_table "finalopinions_pictures", id: false, force: :cascade do |t|
    t.integer "finalopinion_id"
    t.integer "picture_id"
  end

  add_index "finalopinions_pictures", ["finalopinion_id"], name: "index_finalopinions_pictures_on_finalopinion_id"
  add_index "finalopinions_pictures", ["picture_id"], name: "index_finalopinions_pictures_on_picture_id"

  create_table "finalphases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "session_id"
    t.integer  "music_id"
  end

  add_index "finalphases", ["music_id"], name: "index_finalphases_on_music_id"
  add_index "finalphases", ["session_id"], name: "index_finalphases_on_session_id"

  create_table "musics", force: :cascade do |t|
    t.string   "name"
    t.string   "sound"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opinions", force: :cascade do |t|
    t.integer  "mark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "phase_id"
    t.integer  "word_id"
  end

  add_index "opinions", ["phase_id"], name: "index_opinions_on_phase_id"
  add_index "opinions", ["word_id"], name: "index_opinions_on_word_id"

  create_table "phases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "session_id"
    t.integer  "picture_id"
    t.integer  "music_id"
  end

  add_index "phases", ["music_id"], name: "index_phases_on_music_id"
  add_index "phases", ["picture_id"], name: "index_phases_on_picture_id"
  add_index "phases", ["session_id"], name: "index_phases_on_session_id"

  create_table "pictures", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "role"
  end

  create_table "words", force: :cascade do |t|
    t.string   "left"
    t.string   "right"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
