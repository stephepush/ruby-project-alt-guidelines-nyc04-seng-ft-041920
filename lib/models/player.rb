class Player < ActiveRecord::Base

    @@all = []

    attr_reader :name #:first_name, :last_name

    def initialize(player_id, name)
        
        #@first_name = first_name
        #@last_name = last_name
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def game_viewer
        Schedule.all.select{ |event| event.player.name}
    end

    def create_user 
    
    end

    def create_game(event_id, time, player, location)
        Schedule.new(event_id, time, player, location)
    end

end
