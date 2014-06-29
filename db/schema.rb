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

ActiveRecord::Schema.define(version: 20140627171310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "grade"
    t.decimal  "beCutoff"
    t.decimal  "xiiCutoff"
    t.decimal  "xCutoff"
    t.integer  "backsAllowed"
    t.string   "branchesAllowed"
    t.string   "details"
    t.decimal  "package"
    t.datetime "deadline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "allowedBranches", array: true
  end

  create_table "students", force: true do |t|
    t.string   "rollNo"
    t.string   "name"
    t.string   "gender"
    t.string   "category"
    t.string   "branch"
    t.datetime "dob"
    t.string   "email"
    t.string   "contactNo"
    t.string   "altContactNo"
    t.decimal  "bePercent"
    t.decimal  "bePercentDrop"
    t.decimal  "sem1Percent"
    t.decimal  "sem2Percent"
    t.decimal  "sem3Percent"
    t.decimal  "sem4Percent"
    t.decimal  "sem5Percent"
    t.decimal  "sem6Percent"
    t.decimal  "xPercent"
    t.integer  "xYear"
    t.decimal  "xiiPercent"
    t.integer  "xiiYear"
    t.string   "xBoard"
    t.string   "xiiBoard"
    t.string   "fathersName"
    t.string   "fathersOccupation"
    t.string   "fathersContact"
    t.string   "mothersName"
    t.string   "mothersOccupation"
    t.string   "mothersContact"
    t.integer  "backs"
    t.string   "currentAddress"
    t.string   "permanentAddress"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
