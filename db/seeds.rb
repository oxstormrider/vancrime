# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
count = 0
CSV.foreach(File.join(Rails.root, "db", "crime_csv_all_years.csv"), :headers => true, :encoding => 'UTF-8') do |row|
  #TYPE,YEAR,MONTH,DAY,HOUR,MINUTE,HUNDRED_BLOCK,NEIGHBOURHOOD,X,Y
  #Offence Dimension
  #offence = row['TYPE'].to_s
  offence = Offence.find_or_create_by(description: row['TYPE'].to_s)
  #Site Dimension
  neighbourhood = row['NEIGHBOURHOOD'].to_s
  site = Site.find_or_create_by(neighbourhood: neighbourhood)
  #/Moment Dimension
  year = row['YEAR'].to_i
  month = row['MONTH'].to_i
  day = row['DAY'].to_i
  hour = row['HOUR'].to_i
  minute = row['MINUTE'].to_i
  #moment = Moment.find_or_create_by(year: year, month: month, day: day, hour: hour, minute: minute)
  #Fact Table
  crime = Crime.create(offence: offence, site: site, year: year, month: month, day: day, hour: hour, minute: minute)
  #Puts
  count += 1
  puts "#{count} - #{offence.description} - #{year}/#{month}/#{day} - #{hour}:#{minute} - #{neighbourhood}"
end
