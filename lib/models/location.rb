class Location #< ActiveRecord::Base

    @@all = []

    attr_reader :location_id, :venue

    def initialize(location_id, venue)
        @location_id = location_id
        @venue = venue

        @@all << self
    end

    def self.all
        @@all
    end



end