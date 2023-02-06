class MoviesController < ActionController::Base

  def movie_list
    @list_of_movies = Movie.all
    

    render({ :template => "movie_templates/movies.html.erb"})
  end

  def movie_details
    @an_id = params.fetch("an_id")
    @the_movie = Movie.where({ :id => @an_id }).at(0)
    @movie_directors = Movie.where({ :id => @an_id }).at(0)
    @number = @movie_directors.director_id
    @show_director = Director.where({ :id => @number }).at(0)

    render({ :template => "movie_templates/show_movie.html.erb"})
  end
end 
