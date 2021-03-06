class MoviesController < ApplicationController

  def index
    @movies = Movie.all 

    render json: @movies 
  end

  def show
    @movie = Movie.find(params[:id])
    # if :@movie
    #   render status
  end
  def create
    @movie = Movie.create(
      title: params[:title],
      rating: params[:rating],
      genre: params[:genre],
      release_date: params[:release_date],
      runtime: params[:runtime],
      synopsis: params[:synopsis]
    )

    render json: @movie 
  end

end
