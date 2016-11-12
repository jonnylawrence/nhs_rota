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

ActiveRecord::Schema.define(version: 20161112141738) do

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "password_digest"
    t.string   "rememember_digest"
    t.boolean  "consultant"
  end

  create_table "doctors_rota", id: false, force: :cascade do |t|
    t.integer "rotum_id",  null: false
    t.integer "doctor_id", null: false
    t.index ["doctor_id", "rotum_id"], name: "index_doctors_rota_on_doctor_id_and_rotum_id"
    t.index ["rotum_id", "doctor_id"], name: "index_doctors_rota_on_rotum_id_and_doctor_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rota", force: :cascade do |t|
    t.date     "Date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "location_id"
    t.integer  "First_on_call_nights_id"
    t.integer  "Second_on_call_id"
    t.integer  "First_on_call_day_id"
    t.integer  "Consultant_id"
    t.index ["Consultant_id"], name: "index_rota_on_Consultant_id"
    t.index ["First_on_call_day_id"], name: "index_rota_on_First_on_call_day_id"
    t.index ["First_on_call_nights_id"], name: "index_rota_on_First_on_call_nights_id"
    t.index ["Second_on_call_id"], name: "index_rota_on_Second_on_call_id"
    t.index ["location_id"], name: "index_rota_on_location_id"
  end

end
