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
  def create
    #debugger
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end
end
