class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.inject([]) { |m| }
    end
end
