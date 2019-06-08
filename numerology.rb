# Numerology project

# Prompts user to enter their birthdate
puts "When's your birthdate?  Please enter in MMDDYYYY format."
birthdate = gets.to_s

# Extrapolates the digits of the birthdate into integers
def birth_path_number(date)
    no1 = date[0].to_i
    no2 = date[1].to_i
    no3 = date[2].to_i
    no4 = date[3].to_i
    no5 = date[4].to_i
    no6 = date[5].to_i
    no7 = date[6].to_i
    no8 = date[7].to_i

    # Adds all the digits of the birthdate
    number = no1 + no2 + no3 + no4 + no5 + no6 + no7 + no8

    # Reverts the number into a string
    number = number.to_s
end

birthdate = birth_path_number(birthdate)

# Adds the numbers again, this time from a double digit number
def birth_path_number_again(digits)
    no1 = digits[0].to_i
    no2 = digits[1].to_i
    number = no1 + no2
    number = number.to_s
end

# Puts out the user's numerology
def numerology(number)
    case number
    when "1"
        puts "You are a Number 1.\nOne is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
    when "2"
        puts "You are a Number 2.\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when "3"
        puts "You are a Number 3.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
    when "4"
        puts "You are a Number 4.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when "5"
        puts "You are a Number 5.\nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when "6"
        puts "You are a Number 6.\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when "7"
        puts "You are a Number 7.\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when "8"
        puts "You are a Number 8.\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when "9"
        puts "You are a Number 9.\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    end
end

# Does the necessary iterations until a single digit is established
def one_digit(number)
    if number.length > 1
        number = birth_path_number_again(number)
        one_digit(number)
    else
        numerology(number)
    end
end

one_digit(birthdate)