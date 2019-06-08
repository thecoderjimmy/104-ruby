# Always Three Program 

puts "Give me a number"
input = gets.to_i

def always_three(number)
    puts "The final number is always #{((((number + 5) * 2) - 4) / 2) - number}!"
end

always_three(input)