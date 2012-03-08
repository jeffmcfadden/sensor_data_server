class CreateSensorReadings < ActiveRecord::Migration
  def change
    create_table :sensor_readings do |t|
      t.integer :year
      t.integer :day
      t.integer :minute
      t.float :temp_outside
      t.float :humidity_outside
      t.float :dewpoint_outside
      t.float :temp_downstairs
      t.float :temp_upstairs
      t.float :temp_vent
      t.boolean :system_running

      t.timestamps
    end
    
    add_index :sensor_readings, :temp_outside
    add_index :sensor_readings, :humidity_outside
    add_index :sensor_readings, :dewpoint_outside
    add_index :sensor_readings, :temp_downstairs
    add_index :sensor_readings, :temp_upstairs
    add_index :sensor_readings, :temp_vent
    add_index :sensor_readings, :year
    add_index :sensor_readings, :day
    add_index :sensor_readings, :minute
  end
end
