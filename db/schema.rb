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

ActiveRecord::Schema.define(:version => 20120308214621) do

  create_table "sensor_readings", :force => true do |t|
    t.integer  "year"
    t.integer  "day"
    t.integer  "minute"
    t.float    "temp_outside"
    t.float    "humidity_outside"
    t.float    "dewpoint_outside"
    t.float    "temp_downstairs"
    t.float    "temp_upstairs"
    t.float    "temp_vent"
    t.boolean  "system_running"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "sensor_readings", ["day"], :name => "index_sensor_readings_on_day"
  add_index "sensor_readings", ["dewpoint_outside"], :name => "index_sensor_readings_on_dewpoint_outside"
  add_index "sensor_readings", ["humidity_outside"], :name => "index_sensor_readings_on_humidity_outside"
  add_index "sensor_readings", ["minute"], :name => "index_sensor_readings_on_minute"
  add_index "sensor_readings", ["temp_downstairs"], :name => "index_sensor_readings_on_temp_downstairs"
  add_index "sensor_readings", ["temp_outside"], :name => "index_sensor_readings_on_temp_outside"
  add_index "sensor_readings", ["temp_upstairs"], :name => "index_sensor_readings_on_temp_upstairs"
  add_index "sensor_readings", ["temp_vent"], :name => "index_sensor_readings_on_temp_vent"
  add_index "sensor_readings", ["year"], :name => "index_sensor_readings_on_year"

end
