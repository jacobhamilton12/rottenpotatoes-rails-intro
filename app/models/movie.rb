class Movie < ActiveRecord::Base
    def self.ratings
        enum select: :rating 
    end
end
