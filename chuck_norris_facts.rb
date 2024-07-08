require 'faker'

flag = true

puts 'True fact about Chuck Norris'

while flag
    puts Faker::ChuckNorris.fact
    puts 'Do you want more? Y or N'
    if gets.chomp.upcase == 'N'
        puts "Bye!"
        flag = false
        break
    end
end