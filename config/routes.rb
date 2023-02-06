Rails.application.routes.draw do
  
  #homepage 
    get("/", { :controller => "application", :action => "homepage" })

  #directors
    get("/directors", { :controller => "directors", :action => "index"})

  #directors_youngest
    get("/directors/youngest", { :controller => "directors", :action => "youngest"})

  #directors_eldest
    get("/directors/eldest", { :controller => "directors", :action => "wisest"})

  #directors_dynamic
    get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

  #movies
    get("/movies", { :controller => "movies", :action => "movie_list"})

  #movies_dynamic
    get("/movies/:an_id", { :controller => "movies", :action => "movie_details"})


end
