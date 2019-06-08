# Creates an arbitrary number to work with
number = 1

# Will work with integers from 1 to 100
while number <= 100

    # Prints FizzBuzz if divisible by both 3 & 5
    if number % 3 == 0 && number % 5 == 0
        puts "FizzBuzz"

    # Prints Fizz if divisible by 3
    elsif number % 3 == 0
        puts "Fizz"

    # Prints Buzz if divisible by 5
    elsif number % 5 == 0
        puts "Buzz"

    # Otherwise prints number normally
    else
        puts number
    end

    # Makes it the next integer
    number += 1
end
