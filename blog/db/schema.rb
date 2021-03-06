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

ActiveRecord::Schema.define(version: 20150922064609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "amanda_cms_entries", force: :cascade do |t|
    t.string   "type"
    t.string   "title"
    t.string   "slug"
    t.jsonb    "payload",      default: {}, null: false
    t.integer  "user_id"
    t.string   "author_name"
    t.datetime "published_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "parent_id"
  end

  add_index "amanda_cms_entries", ["payload"], name: "index_amanda_cms_entries_on_payload", using: :gin
  add_index "amanda_cms_entries", ["slug"], name: "index_amanda_cms_entries_on_slug", using: :btree
  add_index "amanda_cms_entries", ["type"], name: "index_amanda_cms_entries_on_type", using: :btree
  add_index "amanda_cms_entries", ["user_id"], name: "index_amanda_cms_entries_on_user_id", using: :btree

  create_table "amanda_cms_entry_groups", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.jsonb    "fields",     default: {}, null: false
  end

  create_table "amanda_cms_repeaters", force: :cascade do |t|
    t.string   "title"
    t.integer  "source_entry_id"
    t.integer  "entry_id"
    t.string   "entry_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "amanda_cms_repeaters", ["entry_id", "source_entry_id"], name: "index_amanda_cms_repeaters_on_entry_id_and_source_entry_id", unique: true, using: :btree
  add_index "amanda_cms_repeaters", ["entry_id"], name: "index_amanda_cms_repeaters_on_entry_id", using: :btree
  add_index "amanda_cms_repeaters", ["entry_type"], name: "index_amanda_cms_repeaters_on_entry_type", using: :btree
  add_index "amanda_cms_repeaters", ["source_entry_id"], name: "index_amanda_cms_repeaters_on_source_entry_id", using: :btree

end
