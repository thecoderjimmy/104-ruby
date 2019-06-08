puts "Do you love me?  Y/N?"
answer = gets.chomp.downcase

while answer == "y"
    puts "I love you too.  Do you still love me?  Y/N?"
    answer = gets.chomp.downcase
    while answer == "n"
        puts "I still love you...  Do you love me now?  Y/N?"
        answer =gets.chomp.downcase
    end
end

puts "...I don't understand you."