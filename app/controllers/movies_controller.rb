class MoviesController < ApplicationController
  before_action :set_movie, only: [ :show ]

  def index
    @movies = Movie.all

    render json: MovieSerializer.new(@movies).serializable_hash.to_json
  end

  def show
    render json: MovieSerializer.new(@movie)
  end

  # create new movie record if movie record doesn't already exist
  def create
    if Movie.find_by title: params[:title]
      m = params[:title]
    else
      movie = Movie.new(movie_params)
      if movie.save
        render json: MovieSerializer.new(movie).serializable_hash.to_json
      end
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if params[:upvote].to_i > 0
      upvote_count = params[:upvote].to_i + @movie.upvote.to_i
      @movie.update(upvote: upvote_count.to_s)  
    elsif params[:downvote].to_i > 0
      downvote_count = params[:downvote].to_i + @movie.downvote.to_i
      @movie.update(downvote: downvote_count.to_s)  
    end

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
