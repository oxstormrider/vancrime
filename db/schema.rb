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

ActiveRecord::Schema.define(version: 20170518233908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crimes", force: :cascade do |t|
    t.bigint "offence_id"
    t.bigint "site_id"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.integer "hour"
    t.integer "minute"
    t.index ["day"], name: "index_crimes_on_day"
    t.index ["hour"], name: "index_crimes_on_hour"
    t.index ["minute"], name: "index_crimes_on_minute"
    t.index ["month"], name: "index_crimes_on_month"
    t.index ["offence_id"], name: "index_crimes_on_offence_id"
    t.index ["site_id"], name: "index_crimes_on_site_id"
    t.index ["year"], name: "index_crimes_on_year"
  end

  create_table "offences", force: :cascade do |t|
    t.string "description"
    t.index ["description"], name: "index_offences_on_description"
  end

  create_table "sites", force: :cascade do |t|
    t.string "neighbourhood"
    t.index ["neighbourhood"], name: "index_sites_on_neighbourhood"
  end

end
