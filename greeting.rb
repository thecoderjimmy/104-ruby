# Gets user name
def get_name
    puts "What's your name?"
    username = gets.capitalize
end

# Gets the current time
def determine_current_hour
    current_time = Time.new
    current_hour = current_time.hour
end

# Makes a customized greeting for the user based on current time
def greeting(name)
    current_hour = determine_current_hour
    if (current_hour > 3 && current_hour < 12)
        time = "morning"
    elsif (current_hour > 12 && current_hour < 18)
        time = "afternoon"
    else
        time = "evening"
    end
    puts "Good #{time}, #{name}".chop + "!"
end

username = get_name
greeting(username)