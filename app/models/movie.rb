require 'pry'

class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        movie = Movie.new(title: title)
        movie.save
        movie
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(title:, release_date:)
        Movie.find_by title: title, release_date: release_date
    end

    def self.find_movies_after_2002
        Movie.where "release_date > 2002"
    end

    def update_with_attributes(title:)
        self.update(title: title)
    end

    def self.update_all_titles(title)
        Movie.update_all title: title
    end

    def self.delete_by_id(id)
        Movie.destroy_by(id: id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end