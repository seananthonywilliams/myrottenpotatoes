Myrottenpotatoes::Application.routes.draw do
  
  # Route that posts 'Search TMDb' form
  post '/movies/search_tmdb'

  resources :movies
  
  post '/movies/search_tmdb'

  root :to => redirect('/movies')
end
