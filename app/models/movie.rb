class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.sort.reverse.inject([]) { |a, b| a.push(b.rating)}
    end
    
    def self.With_ratings( allratings)
        params[:ratings].nil? ? r = allratings : r = params[:ratings].keys
        Movie.where(rating: r).order(@sort)
    end
end
