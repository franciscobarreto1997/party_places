class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

  def index
    #@venues = Venue.all
    @venues = policy_scope(Venue).order(created_at: :desc)
  end

  def show
    @booking = Booking.new
    @reviews = @venue.reviews
  end


  def new
    @venue = Venue.new
    authorize @venue
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    authorize @venue
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def edit
    authorize @venue
  end

  def update
    @venue.update(venue_params)
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :edit
    end
  end

  def destroy
    @venue.destroy
    redirect_to venues_path
  end



  private

  def set_venue
    @venue = Venue.find(params[:id])
    authorize @venue
  end

  def venue_params
    params.require(:venue).permit(:name, :capacity, :price, :location, :address, :description, :category, :photo)
  end
end
