class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.sort.reverse.inject([]) { |a, b| a.push(b.rating)}
    end
    
    def self.With_ratings
        params[:ratings].nil? ? r = self.ratings : r = params[:ratings].keys
        Movie.where(rating: r)
    end
end
