class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.inject([])
    end
end
