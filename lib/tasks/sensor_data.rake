require 'net/http'

namespace :sensor_data do
  desc "Import the latest sensor data from the sensors"
  task :import => :environment do
    
    now = Time.new
    
    year   = now.year
    day    = now.yday
    minute =  ( now.hour * 60 ) + now.min
    
    response_system = Net::HTTP.get_response("192.168.201.81","/json")
    data_system     = JSON.parse( response_system.body )
    
    response_temps  = Net::HTTP.get_response("192.168.201.86","/")
    data_temps      = JSON.parse( response_temps.body )

    sensor_reading = SensorReading.new(
      {
        :year   => year,
        :day    => day,
        :minute => minute,
        :temp_outside     => data_temps['backyard_sht15']['temp_f'].to_f,
        :humidity_outside => data_temps['backyard_sht15']['humidity'].to_f,
        :dewpoint_outside => data_temps['backyard_sht15']['dewpoint_f'].to_f,
        :temp_upstairs    => data_system['current_temp'].to_f,
        :temp_downstairs  => data_temps['287D13120089']['temp_f'].to_f,
        :temp_vent        => data_temps['284B133120029']['temp_f'].to_f,
        :system_running   => data_system['system_running']
      }
    ).save
      
  end
end
