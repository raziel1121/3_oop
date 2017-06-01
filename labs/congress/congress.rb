# Data from NY Times API  April 1996

# Can you make this code work?
# (Use the 'congress.json' file.)

puts "Name".ljust(40) + "Loyalty Pct"
puts "-" * 35 + " "*5 + "-" * 12

illinois_reps = Representative.get_all_from_state("IL")

illinois_reps.each do |person|
  puts "#{person.full_name.ljust(40)}#{person.loyalty_factor}"
end

# What else can you do with this data?
