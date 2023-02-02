class DirectorsController < ActionController::Base
  
  def director_list
    render({ :template => "director_templates/director_main.html.erb"})
  end

  def youngest
    render({ :template => "director_templates/director_youngest.html.erb"})
  end

  def eldest
    render({ :template => "director_templates/director_eldest.html.erb"})
  end
  
end
