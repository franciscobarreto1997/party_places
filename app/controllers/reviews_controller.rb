class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    # @booking.venue = @venue
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to venue_path(@booking.venue)
    else
      render :new
    end
  end

  # def create
  #   # [...]
  #   if @review.save
  #     respond_to do |format|
  #       format.html { redirect_to _path(@restaurant) }
  #       format.js  # <-- will render `app/views/reviews/create.js.erb`
  #     end
  #   else
  #     respond_to do |format|
  #       format.html { render 'venues/show' }
  #       format.js  # <-- idem
  #     end
  #   end
  # end

  def edit
  end

  def update
  end

  def destroy
    @review.destroy
    redirect_to @booking
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
