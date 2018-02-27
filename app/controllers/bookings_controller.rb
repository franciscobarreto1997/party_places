class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    #@booking = Booking.new(booking_params)
    @booking = current_user.bookings.build(booking_params)

    if @booking.save
      redirect_to @booking
    else
      render :new
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

end
