class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
    @venues = Venue.all
  end

  def search


    @venues = Venue.all
    @venues = @venues.where(location: params[:city]) if params[:city]
    @venues = @venues.where.not(latitude: nil, longitude: nil)
    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end


  def results
  end


end
