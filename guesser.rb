puts "Think of a number from 1 to 100"
puts "I try to guess your number"
puts "Answer only 'too low', 'too high' or 'correct'"
number_guess = 0
lowest = 1
highest = 100

loop do
    number_guess += 1
    guess = (lowest + highest) / 2
    puts "Is your number #{guess}?"
    answer = gets.chomp.downcase
    if answer == "too low"
        if guess >= highest
            puts "You are lying! The guess can't be too low."
            puts "Do you want to play again? Print Y or N"
            if gets.chomp.upcase == "Y"
                number_guess = 0
                lowest = 0
                highest = 100
                next
            else
                puts "Bye!"
                break
            end
          end
        lowest = guess
    elsif answer == "too high"
        if guess <= lowest
            puts "You are lying! The guess can't be too high."
            puts "Do you want to play again? Print Y or N"
            if gets.chomp.upcase == "Y"
                number_guess = 0
                lowest = 0
                highest = 100
                next
            else
                puts "Bye!"
                break
            end
          end
          highest = guess
    elsif answer == "correct" 
        puts "I guessed your number in #{number_guess} try/tries!"
        puts "Do you want to play again? Print Y or N"
        if gets.chomp.upcase == "Y"
            number_guess = 0
            lowest = 0
            highest = 100
            next
        else
            puts "Bye!"
            break
        end
    else
        puts "Please respond with 'too low', 'too high', or 'correct'."
    end

    if lowest >= highest
        puts "You are lying! There are no possible numbers left."
        puts "Do you want to play again? Print Y or N"
        if gets.chomp.upcase == "Y"
            number_guess = 0
            lowest = 0
            highest = 100
            next
        else
            puts "Bye!"
            break
        end
    end
end
