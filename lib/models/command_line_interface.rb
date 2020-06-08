class CommandLineInterface

    #@@input = []
    attr_accessor :name, :location, :schedule
    

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

    # def user_input
    #     {:name => name, :location => location, :schedule => time}
    # end


    def input_name
        self.name = gets.chomp
        
    end

    def add_schedule
        self.schedule = gets.chomp
    end

    def location_input
        self.location = gets.chomp
        puts "Okay, when would you like to have that game?"
        self.schedule = gets.chomp
        puts "Alright, #{name}. You would like to schedule a game in #{@location} at #{@schedule}"
        create_user_instance
    end

    def schedule_time
        add_schedule
        put "Alright, let me set that game up"
        #user_hash_to_instance
        #confirmation
    end


    def create_user
        #Player.create(name: name)
        input_name
        puts "Hi, #{self.name}!"
        shows_locations
        puts "Where would you like to schedule a pickup game?"
        location_input
       
    end
    
    def locations
        Location.all.map do |instance|
            puts instance.venue
        end
        #after_location_string
        after_intro_location
    end

    def create_user_instance
        Player.create(name: self.name)
        Location.create(venue: self.location)
        Schedule.create(time: self.schedule)
        
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