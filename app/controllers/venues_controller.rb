class VenuesController < ApplicationController
  before_action :set_venue, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

  def index
    @venues = Venue.all
  end

  def show
    @booking = Booking.new
  end

  def search
    # @venues = Venue.where("name LIKE '%?%'", params[:name])
    @venues = Venue.all
  end


  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

end
