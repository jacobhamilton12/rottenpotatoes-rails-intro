class Movie < ActiveRecord::Base
    @ratings = [:G, :PG, "PG-13", :R]
    attr_accessor :ratings
end
