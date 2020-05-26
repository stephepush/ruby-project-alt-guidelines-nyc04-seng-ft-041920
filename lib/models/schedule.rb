class Schedule #< ActiveRecord::Base

    @@all = []

    attr_reader :event_id, :time, :player, :location
    
    def initialize(event_id, time, player, location)
        @event_id = event_id
        @time = time
        @player = player
        @location = location

        @@all << self
    end

    def self.all
        @@all
    end

end