module Api::V1
  class DirectorsController < ApplicationController
    def index
      @directors = Director.all
      render json: @directors
    end

    def show
      @director = Director.find(params[:id])
      render json: @director
    end

    def create
      @director = Director.create(director_params)
      render json: @director, status: 201
    end

    def update
      @director = Director.find(params[:id])
      @director.update(director_params)
      render json: @director
    end

    def destroy
      @director = Director.find(params[:id])
      @director.destroy
      render status: 204
    end


    private

    def director_params
      params.require(:director).permit(:name, :year_born, :hometown)
    end
  end
end
