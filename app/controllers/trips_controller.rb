class TripsController < ApplicationController
  def index
    trips = Trip.includes(:gears).all
    render json: trips, methods: [:good_gear]
  end

  def create
    trip = Trip.create(trip_params)
    if trip.valid?
      render json: trip, include: :good_gear, status: :created
    else
      render json: {message: "something went wrong"}, status: :unprocessable_entity
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:location, :details, gear_ids: [])
  end
end
