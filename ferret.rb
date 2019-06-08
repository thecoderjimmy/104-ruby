# Think of a class as a vehicle for storing (setting) and retreiving (getting) information.
class Ferret
    
    def set_name=(ferret_name)
        @name = ferret_name
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

    def squel
        return "squeeeee"
    end
    
end

my_ferret = Ferret.new # Creates a new instance of the ferret class and saves the Ferret object to a variable called "my_ferret"

my_ferret.set_name= "Fredo" # This is a setter, setting the name "Fredo" to my_ferret

ferret_name = my_ferret.get_name # This is a getter, getting the name of the ferret recorded in my_ferret

puts "#{ferret_name} says #{my_ferret.squeal}!"