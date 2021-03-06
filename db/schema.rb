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

ActiveRecord::Schema.define(version: 2018_07_27_164508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.bigint "comments_id"
    t.text "uid"
    t.index ["comments_id"], name: "index_authors_on_comments_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.bigint "author_id"
    t.bigint "post_id"
    t.index ["author_id"], name: "index_comments_on_author_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.bigint "author_id"
    t.bigint "comments_id"
    t.index ["author_id"], name: "index_posts_on_author_id"
    t.index ["comments_id"], name: "index_posts_on_comments_id"
  end

  add_foreign_key "authors", "comments", column: "comments_id"
  add_foreign_key "comments", "authors"
  add_foreign_key "comments", "posts"
  add_foreign_key "posts", "authors"
  add_foreign_key "posts", "comments", column: "comments_id"
end
