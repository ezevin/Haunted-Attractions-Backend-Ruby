class Api::V1::TripsController < ApplicationController
  def index
    @trips = Trip.all
    render json: @trips
  end

  def show
    @trip = Trip.find(params[:id])
    render json: @trip
  end

  def create
    @trip = Trip.create(trip_params)
    render json: @trip
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    render json: @trip
  end

  def destroy
    get_trip.destroy
    flash[:notice] = "You have deleted this Trip"
  end

private

  def get_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:trip_name, :attraction_id)
  end

end
