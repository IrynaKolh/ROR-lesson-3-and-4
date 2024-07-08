def divisible
    arr = []
    (1..100).each do |i|
        if i % 2 == 0 || i % 3 == 0 || i % 5 == 0
            arr << i
        end
    end
    return arr
end

print divisible