#!/bin/bash
source ~/.bashrc
source ~/.bashrc
cd /Users/jeffmcfadden/sensor_data_server
rvm use 1.9.2
bundle exec rake sensor_data:import
