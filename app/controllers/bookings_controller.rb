class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_venue, only: [:create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    authorize @booking

  end

  def create
    #@booking = Booking.new(booking_params)
    @booking = current_user.bookings.build(booking_params)

    @booking.venue = @venue
    authorize @booking

    if @booking.save
      redirect_to user_dashboard_path, notice: "your booking is now confirmed"
    else
      redirect_back fallback_location: root_path, alert: "Could not save this booking"
    end
  end

  def show

  end

  def update

  end

  def edit

  end

  def destroy
    @booking.destroy
    redirect_to @booking
  end

  private


  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end

end
