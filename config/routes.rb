Rails.application.routes.draw do
  
  #homepage 
    get("/", { :controller => "application", :action => "homepage" })

  #directors
    get("/directors", { :controller => "directors", :action => "director_list"})

  #directors_youngest
  get("/directors/youngest", { :controller => "directors", :action => "youngest"})

  #directors_eldest
    get("/directors/eldest", { :controller => "directors", :action => "eldest"})

  #movies
    #get("/directors", { :controller => "directors", :action => "director_list"})


end
