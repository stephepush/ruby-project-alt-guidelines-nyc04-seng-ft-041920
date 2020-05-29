class CommandLineInterface

    def greet
        puts "Welcome to Parkside Pickup, where you can schedule a pickup game at the park!"
    end

    def greet_question
        puts "Thinking of a game of pickup basketball? 
        Let's look at locations where you could schedule a game!"
    end

    def greeting_input
        location_input = gets.chomp
    end

    def name
        name_input = gets.chomp
    end

    def create_user
        Player.new(name: name)
        shows_locations
    end
    
    def locations
        Location.all.each do |instance|
            instance.venue
        end
    end

    def shows_locations
        puts "Here are Locations available for scheduling:"
        puts locations
    end

    

    def greeting_conditional
        if Location.find_by(venue: greeting_input) != nil
            puts "We schedule for that location! Let's get you signed up! What's your name?"
            create_user
        else
            puts "Sorry, we don't schedule for that location, try another place"
            if Location.find_by(venue: greeting_input) != nil
                puts "We schedule for that location! Let's get you signed up! What's your name?"
                Player.new(name: name)
            else
                puts "Okay, come back if you can think of a place we can reserve times for."
                exit
            end
        end
    end

    def run
        greet
        greet_question
        #location_input = gets.chomp
        #Location.find_by(venue: greeting_input)
        #Location.find(venue: greeting_input)

        greeting_conditional
        
    end    

end