class Location < ActiveRecord::Base

    has_many :schedules
    has_many :players, through: :schedules
    
end