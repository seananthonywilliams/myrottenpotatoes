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
  def edit
    @movie = Movie.find params[:id]
  end
  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end
  def search_tmdb
    @movies = Movie.find_in_tmdb(params[:search_terms])
  end
end
