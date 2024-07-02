secret_number = rand(1..100)

puts 'Guess the number'
number_guess = 0

while true
    puts "Enter number from 1 to 100"
    number = gets.to_i
    number_guess += 1
    if number == secret_number
        puts "You guessed the number #{secret_number} in #{number_guess} try/tries."
        puts "Do you want to play again? Print Y or N"
        if gets.chomp.upcase == "Y"
            secret_number = rand(1..100)
            number_steps = 0
            next
        else
            puts "Bye!"
            break
        end
    elsif number > secret_number
        puts "Too big! Try the smaller one."
    else
        puts "Too small! Try the bigger one."
    end
end