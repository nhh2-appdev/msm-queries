class DirectorsController < ActionController::Base
  
  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def youngest
    render({ :template => "director_templates/director_youngest.html.erb"})
  end

  def wisest
    @oldest = Director.where.not({:dob => nil }).order({ :dob => :asc }).at(0)

    render({ :template => "director_templates/eldest.html.erb"})
  end
  
end
