class Api::V1::AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
    render json: @attractions
  end

  def show
    @attraction = Attraction.find(params[:id])
    render json: @attraction
  end

  def create
    @attraction = Attraction.create(attraction_params)
    render json: @attraction
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update(attraction_params)
    render json: @attraction
  end

  def destroy
    get_attraction.destroy
    flash[:notice] = "You have deleted this project"
  end

private

  def get_attraction
    @attraction = Attraction.find(params[:id])
  end

  def attraction_params
    params.require(:attraction).permit(:name, :street, :city, :state, :country, :zip_code, :attraction_type, :description, :rating)
  end

end
