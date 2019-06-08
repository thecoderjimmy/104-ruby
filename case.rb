# Case Practice: Weather

# Defines the_weather
the_weather = 'sunny'

# Starts the case
case the_weather
when 'sunny'
    puts "It's fine weather today! Don't forget your hat!"
when 'cloudy'
    puts "It looks like it might rain. Don't forget your umbrella!"
when 'rainy'
    puts "Look at that rain!  Don't forget your rainboots!"
when 'snowy'
    puts "Looks like snow.  Don't forget your snowboots!"
else
    puts "I'm not sure what the weather is like right now."
end