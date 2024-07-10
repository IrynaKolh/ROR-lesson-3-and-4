def hangman(word, letters)
    result = ''
    word.each_char do |i|
        if letters.include?(word[i])
            result += word[i]
        else
            result += '_'
        end
    end
    return result
end

puts hangman("bob", ["b"])
puts hangman("alphabet", ["a", "h"])