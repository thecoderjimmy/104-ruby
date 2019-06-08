class Dog

    def set_name=(name)
        @name = name
    end

    def get_name
        return @name
    end

    def set_owner=(owner_name)
        @owner_name = owner_name
    end

    def get_owner
        return @owner_name
    end

end

class Shiba < Dog

    def wan
        return "wan wan"
    end

end

class Beagle < Dog

    def bark
        return "bark bark"
    end

end

class Husky < Dog

    def woof
        return "woof woof"
    end

end

the_owner = Dog.new
the_owner.set_owner = "Jimmy"
owner_name = the_owner.get_owner

my_shiba = Shiba.new
my_shiba.set_name = "Yukichi"
shiba_name = my_shiba.get_name

my_beagle = Beagle.new
my_beagle.set_name = "Jack"
beagle_name = my_beagle.get_name

my_husky = Husky.new
my_husky.set_name = "Infinity"
husky_name = my_husky.get_name

puts "Hi, I'm #{owner_name}.\nI have three dogs: #{shiba_name}, #{beagle_name}, and #{husky_name}.\nSay hi buddies!\n#{shiba_name}: #{my_shiba.wan}!\n#{beagle_name}: #{my_beagle.bark}!\n#{husky_name}: #{my_husky.woof}!"

puts the_owner.inspect
puts my_shiba.inspect
puts my_beagle.inspect
puts my_husky.inspect