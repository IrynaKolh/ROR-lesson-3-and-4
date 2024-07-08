my_hash = {}

5.times do |i|
    puts "Enter #{i + 1} key name:"
    temp_key = gets.chomp
    puts "Enter #{i + 1} value data:"
    temp_value = gets.chomp
    my_hash.store(temp_key, temp_value)
end

def hash_to_array(hash)
    print "Keys array: " 
    print hash.keys
    puts
    print "Values array: " 
    print hash.values
    puts
end

hash_to_array(my_hash)