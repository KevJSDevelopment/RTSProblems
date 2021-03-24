# Q#1:  
#   Print the number of integers in an array that are above the given input and the number that are below, 
#   e.g. for the array [1, 5, 2, 1, 10] with input 6, print “above: 1, below: 4”.

def above_or_below(number_input, array)

    if !array.is_a?(Array) || !number_input.is_a?(Numeric)
        return puts "Must enter a number and an array of numbers"
    end

    count_hash = {
        above: 0, 
        below: 0
    }

    array.each do |value|
        
        if value.is_a? (Numeric)
            if value > number_input
                count_hash[:above] += 1
            end

            if value < number_input
                count_hash[:below] += 1
            end
        end

    end


    puts("above: #{count_hash[:above]}, below: #{count_hash[:below]}")
end

# test cases, assuming numbers that are equal to input are not counted

# above_or_below(6, [1,2,3,4,5,7,8,9,10]) # => "above: 4, below: 5"
# above_or_below(8, [1,2,3,4,5,7,8,9,10]) # => "above: 2, below: 6"
# above_or_below(1, [1,2,3,4,5,7,8,9,10]) # => "above: 8, below: 0"
# above_or_below(2, [0, 1, nil, false, 6, 7]) # => "above: 2, below: 2"