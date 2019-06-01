#!/usr/bin/ruby
#################################################
# program that takes a MAC ID as input, and outputs the details about the MAC
# Author: Sunny Mangam
# Date: June 01, 2019
# Usage: macapp.rb <mac id>
#################################################
require "open-uri"
require "json"

if ARGV.length != 1
  puts "Incorrect arguments."
  puts "Usage:   docker run <image> <mac address>"
  puts "Example: docker run smangam/macapp 44:38:39:ff:ef:57"
  exit
end

mymac = ARGV[0]

unless mymac =~/^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$/
  puts "MAC address format is incorrect."
  exit
end

response = open("https://api.macaddress.io/v1?apiKey=#{ENV['API_KEY']}&output=json&search=#{mymac}").read
obj=JSON.parse(response)
if obj["blockDetails"]["blockFound"]
  puts "MAC Address:     "+mymac
  puts "OUI:             "+obj["vendorDetails"]["oui"]
  puts "Company:         "+obj["vendorDetails"]["companyName"]
  puts "Company Address: "+obj["vendorDetails"]["companyAddress"]
  puts "Country Code:    "+obj["vendorDetails"]["countryCode"]
  puts "Block Found:     "+obj["blockDetails"]["blockFound"].to_s
  puts "Date Created:    "+obj["blockDetails"]["dateCreated"]
  puts "Date Updated:    "+obj["blockDetails"]["dateUpdated"]
  puts "Virtual Machine: "+obj["macAddressDetails"]["virtualMachine"]
  puts "Applications:    "+obj["macAddressDetails"]["applications"].inspect
  puts "Is Valid:        "+obj["macAddressDetails"]["isValid"].to_s
else
  puts "The MAC Address block for #{mymac} does not exist"
end
