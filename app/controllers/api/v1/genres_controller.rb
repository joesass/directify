module Api::V1
  class GenresController < ApplicationController
    def index
      @genres = Genre.all
      render json: @genres
    end

    def show
      @genre = Genre.find(params[:id])
      render json: @genre
    end

    def create
      @genre = Genre.create(genre_params)
      render json: @genre, status: 201
    end

    def update
      @genre = Genre.find(params[:id])
      @genre.update(genre_params)
      render json: @genre
    end

    def destroy
      @genre = Genre.find(params[:id])
      @genre.destroy
      render status: 204
    end


    private

    def genre_params
      params.require(:genre).permit(:name)
    end
  end
end
