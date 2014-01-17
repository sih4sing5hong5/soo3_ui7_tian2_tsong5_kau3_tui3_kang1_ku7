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

ActiveRecord::Schema.define(version: 20140115151033) do

  create_table '"台語文數位典藏"."改過段落資料"', force: true do |t|
#    t.integer "流水號"
    t.integer "id"
    t.string   "檔案名"
    t.string   "漢羅"
    t.string  "全羅"
    t.integer "漢羅逝"
    t.integer "全羅逝"
  end
  create_table '"台語文數位典藏"."改過逝資料"', force: true do |t|
    t.integer "流水號"
    t.string "時代"
    t.string "年"
    t.string "類"
    t.string "類二"
    t.string "漢羅標"
    t.string "全羅標"
    t.string "漢羅名"  
    t.string "全羅名"
    t.string  "檔案名"
    t.string  "漢羅文"
    t.string  "全羅文"
    t.integer "漢羅逝"
    t.integer "全羅逝"
  end
  create_table '"台語文數位典藏"."改過字資料"', force: true do |t|
    t.integer "流水號"
    t.string "時代"
    t.string "年"
    t.string "類"
    t.string "類二"
    t.string  "漢羅文"
    t.string  "全羅文"
    t.integer "無齊記號"
  end

end
