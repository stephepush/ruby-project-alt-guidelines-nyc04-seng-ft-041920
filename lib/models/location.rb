class Location < ActiveRecord::Base

    @@all = []

    attr_reader  :venue

    def initialize(venue)
        
        @venue = venue

        @@all << self
    end

    def self.all
        @@all
    end

    def venues
        self.venue
    end





end