Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "ages", :action => "oldest" })
  get("/directors/youngest", { :controller => "ages", :action => "youngest" })
  get("/directors/:the_id", { :controller => "directors", :action => "show", :constraints => { :the_id => /\d+/ } })

  # Movies routes
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })

  # Actors routes
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:the_id", { :controller => "actors", :action => "show" })
end
