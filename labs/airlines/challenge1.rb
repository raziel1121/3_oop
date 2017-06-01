require 'csv'

numLines = 0
planes = {}
longest = 0
longest_flight = ''
CSV.foreach('daily_flight_data.csv') do |row|
  flight_no,plane_id,origin,dest,miles,passengers = row[0..5]
  planes[plane_id] = 1
  if miles.to_i > longest
    longest = miles.to_i
    longest_flight = flight_no
  end
  numLines += 1
end

puts "Number of line #{numLines}"
puts "Number of planes #{planes.keys.count}"
puts "Longest flight #{longest_flight}"
