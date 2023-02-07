class ActorsController < ActionController::Base
  def actor_list
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/actors.html.erb"})
  end

  def actor_details
    @an_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => @an_id }).at(0)
    @acted_movies = Character.where({ :actor_id => @an_id })

    render({ :template => "actor_templates/show_actors.html.erb"})
  end
end

class MoviesController < ActionController::Base
end

class DirectorsController < ActionController::Base
end

class CharactersController < ActionController::Base
end
