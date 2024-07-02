person = Hash.new()

puts "Enter your first name"
person[:first_name] = gets.chomp

puts "Enter your last name"
person[:last_name] = gets.chomp

puts "Enter your age"
person[:age] = gets.chomp

puts "Enter your street address"
person[:street_address] = gets.chomp

puts "Enter your city"
person[:city] = gets.chomp

puts "Enter your state"
person[:state] = gets.chomp

puts "Person Hash: #{person}"
puts "Keys: #{person.keys}"
puts "Values: #{person.values}"

person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:city] = person[:city].capitalize
person[:state] = person[:state].upcase

puts "Updated Person Hash: #{person}"