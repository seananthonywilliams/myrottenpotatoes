class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def show
    @movie = Movie.find_by_id(params[:id]) # what if this movie is not in DB? 
    # will render app/views/movies/show.html.haml by default
  end
  def new
    # default: render 'new' template
  end
end
