class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
    @venues = Venue.all
  end

  def search
    if params[:query].present?
      @venues = Venue.search(params[:query])
    else
      @venues = Venue.all
    end

    @venues_map = @venues.where.not(latitude: nil, longitude: nil)

    @markers = @venues_map.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
      }
    end
  end


  def results
  end


end
