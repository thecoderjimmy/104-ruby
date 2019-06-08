class Shiba_inu

    # def set_name=(inu_name)
    #    @name = inu_name
    # end

    # def get_name
    #    return @name
    # end

    # def set_owner=(owner_name)
    #    @owner_name = owner_name
    # end

    # def get_owner
    #    return @owner_name
    # end

    # The above can be done with the attr_writer & attr_reader!
    # attr_writer :name, :owner_name
    # attr_reader :name, :owner_name

    # The above can be refactored even more with attr_accessor!
    attr_accessor :name, :owner_name

    def bark
        return "wan wan"
    end

end

my_inu = Shiba_inu.new

print "Hello there!  What's your name? "
owner_name = my_inu.owner_name = gets.chomp.upcase

print "Thanks.  Now tell me your dog's name. "
inu_name = my_inu.name = gets.chomp.upcase

puts "Got it. That's #{inu_name} owned by #{owner_name}.\nOh, I think #{inu_name} is saying something.... '#{my_inu.bark}'."