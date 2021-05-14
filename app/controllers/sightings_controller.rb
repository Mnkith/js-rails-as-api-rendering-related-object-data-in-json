class SightingsController < ApplicationController
  def show
    sighting = Sighting.find_by(id: params[:id])
    if sighting
      render json: sighting, include: [:bird, :location]
      # render json: { id: sighting.id, bird: sighting.bird.to_json(only: [:id]), location: sighting.location }
    else
      render json: { message: 'No sighting found with that id' }
    end
  end
end