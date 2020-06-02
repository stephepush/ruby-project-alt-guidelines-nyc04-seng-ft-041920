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

    def user_input
        {:name => name, :location => location, :schedule => time}
    end


    def name
        name_input = gets.chomp
        user_input[:name] = name_input
    end

    def add_schedule
        user_input[:schedule] = gets.chomp
    end

    def location
        user_input[:location] = gets.chomp
        puts "Okay, when would you like to have that game?"
        schedule_time
    end

    def schedule_time
        add_schedule
        put "Alright, let me set that game up"
        user_hash_to_instance
        confirmation
    end

    def confirmation
        puts "Okay, so you're scheduled to play at #{user_input[:location]} at #{user_input[:schedule]}. Hope to see you then!"
    end

    def create_user
        #Player.create(name: name)
        user_input[:name] = name
        shows_locations
        puts "Where would you like to schedule a pickup game?"
        location

    end
    
    def locations
        Location.all.map do |instance|
            puts instance.venue
        end
        after_location_string
    end

    def user_hash_to_instance
        Player.create(name: user_input[:name])
        Location.create(location: user_input[:location])
        Schedule.create(schedule:user_input[:time])
    end
        

    # def all_locations
    #     locations.map do |location|
    #        puts location.venue
    #     end
    # end


    def shows_locations

        puts "Here are Locations available for scheduling:"
        locations
        #all_locations
    end

    def after_intro_location
        puts "Okay, enter a location. It could be one listed, or a new one"
    end

    

    def greeting_conditional
        if Location.find_by(venue: greeting_input) != nil
            puts "We schedule for that location! Let's get you signed up! What's your name?"
            create_user
        else
            puts "Sorry, we don't schedule for that location, try another place"
            if Location.find_by(venue: greeting_input) != nil
                puts "We schedule for that location! Let's get you signed up! What's your name?"
                create_user
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