class Schedule < ActiveRecord::Base

    @@all = []

    attr_reader :event_id, :time, :player, :location
    
    def initialize(event_id, time, player, location)
        #@event_id = event_id
        @time = time
        @player_id = player_id
        @location_id = location_id

        @@all << self
    end

    def self.all
        @@all
    end

end