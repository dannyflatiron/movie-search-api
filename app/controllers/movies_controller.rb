class MoviesController < ApplicationController
  before_action :set_movie, only: [ :show ]

  def show
    render json: MovieSerializer.new(@movie)
  end

  def create
    movie = Movie.new(movie_params)
    if movie.save
      render json: MovieSerializer.new(movie).serializable_hash.to_json
    end
  end

  def update
    @movie = Moive.find(params[:id])
    @movie.update(upvote: params[:upvote], downvote:[:downvote])

    render json: MovieSerializer.new(@movie)
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :upvote, :downvote)
  end

end
