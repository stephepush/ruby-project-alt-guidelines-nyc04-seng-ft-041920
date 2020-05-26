class Player #< ActiveRecord::Base

    @@all = []

    attr_reader :player_id, :first_name, :last_name

    def initialize(player_id, first_name, last_name)
        @player_id = player_id
        @first_name = first_name
        @last_name = last_name


        @@all << self
    end

    def self.all
        @@all
    end



end
