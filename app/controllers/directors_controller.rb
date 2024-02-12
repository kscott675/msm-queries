class DirectorsController < ApplicationController
  def index
    render ({ :template => "director_templates/list" })
  end

  def show
    the_id = params[:the_id]
    @director = Director.where({ :Id => the_id }).first
    @director_movies = Movie.where({ :director_id => the_id })
    render ({ :template => "director_templates/details" })
  end
end
