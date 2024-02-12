class ActorsController < ApplicationController
  def index
    render ({ :template => "actor_templates/list" })
  end

  def show
    the_id = params[:the_id]
    @actor = Actor.where({ :id => the_id }).first
    @characters = Character.where({ :actor_id => the_id })
    


    render ({ :template => "actor_templates/details" })
  end
end
