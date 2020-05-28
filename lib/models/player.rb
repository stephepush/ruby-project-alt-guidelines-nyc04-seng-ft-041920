class Player < ActiveRecord::Base

    has_many :schedules
    has_many :locations, through: :schedules
        
end
