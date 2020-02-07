class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.sort.reverse.inject([]) { |a, b| a.push(b.rating)}
    end
end
