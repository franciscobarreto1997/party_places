class VenuesController < ApplicationController
  before_action :set_venue, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query"
      @venues = Venue.where(sql_query, query: "%#{params[:query]}%")
    else
      @venues = Venue.all
    end
  end

  def show
    @booking = Booking.new
  end





  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

end
