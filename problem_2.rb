# #2  Rotate the characters in a string by a given input and have the overflow appear at the beginning, 
#e.g. “MyString” rotated by 2 is “ngMyStri”.

def rotate_string_by_input(string, input)

    if string.is_a?(String) && input.is_a?(Numeric) && input > 0

        newString = string.slice(string.length - input, input)
        puts newString.concat(string[0... string.length - input])

    else
        puts "Input requires a string & a number greater than 0"
    end

end


# test cases

# rotate_string_by_input("IWantToBeRotated", 3) #=> "tedIWantToBeRota"
# rotate_string_by_input("I Want To Be Rotated", 12) #=> "o Be RotatedI Want T"
# rotate_string_by_input(true, 12) #=> "Input requires a string & a number greater than 0"
# rotate_string_by_input("RotateThisString", "12") #=> "Input requires a string & a number greater than 0"