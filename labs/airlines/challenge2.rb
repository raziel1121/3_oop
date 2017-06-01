require 'csv'

class Flight
  attr_accessor :flight_number
  attr_accessor :plane_id
  attr_accessor :origin
  attr_accessor :destination
  attr_accessor :miles
  attr_accessor :num_passengers

  def initialize(data)
    self.flight_number = data['flight_number']
    self.plane_id = data['plane_id']
    self.origin = data['origin']
    self.destination = data['destination']
    self.miles = data['miles'].to_i
    self.num_passengers = data['num_passengers'].to_i
  end
end

numLines = 0
planes = {}
longest = 0
longest_flight = ''
CSV.foreach('daily_flight_data.csv', headers: true) do |row|
  flight = Flight.new(row)
  planes[flight.plane_id] = 1
  if flight.miles > longest
    longest = flight.miles
    longest_flight = flight.flight_number
  end
  numLines += 1
end

puts "Number of line #{numLines}"
puts "Number of planes #{planes.keys.count}"
puts "Longest flight #{longest_flight}"
