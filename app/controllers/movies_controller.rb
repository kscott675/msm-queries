class MoviesController < ApplicationController
  def index
    render ({ :template => "movie_templates/list" })
  end

  def show
    the_id = params[:the_id]
    @movie = Movie.where({ :id => the_id }).first
    director_id = @movie.director_id
    @director = Director.where({ :id => director_id }).first.name
    @characters = Character.where({ :actor_id => the_id})

    
    render ({ :template => "movie_templates/details" })
  end
end
