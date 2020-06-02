class Location < ActiveRecord::Base

    has_many :schedules
    has_many :players, through: :schedules
    
    def locations
        self.all.map do |instance|
            instance.venue
        end
    end

end