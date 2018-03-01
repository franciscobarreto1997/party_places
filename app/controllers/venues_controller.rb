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

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to venues_path
    else
      render :new
    end
  end



  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :capacity, :price, :location, :address, :description, :category)
  end
end
