module Api::V1
  class MoviesController < ApplicationController
    def index
      @movies = Movie.all
      render json: @movies
    end

    def show
      @movie = Movie.find(params[:id])
      render json: @movie
    end

    def create
      @movie = Movie.create(movie_params)
      render json: @movie, status: 201
    end

    def update
      @movie = Movie.find(params[:id])
      @movie.update(movie_params)
      render json: @movie
    end

    def destroy
      @movie = Movie.find(params[:id])
      @movie.destroy
      render status: 204
    end


    private

    def movie_params
      params.require(:movie).permit(:title, :director_id, :genre_id)
    end
  end
end
