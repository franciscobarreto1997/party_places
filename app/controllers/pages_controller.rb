class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
    @venues = Venue.all
  end

  def search
    # @venues = Venue.where("name LIKE '%?%'", params[:name])
    @venues = Venue.all
    @venues =  Venue.where.not(latitude: nil, longitude: nil)

    @markers = @venues.map do |venue|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def results
  end

end
