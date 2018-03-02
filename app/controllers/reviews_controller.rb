class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  # def create
  #   @review = Review.new(review_params)
  #   if @review.save
  #     redirect_to @review.booking
  #   else
  #     render :new
  #   end
  # end

  def create
    # [...]
    if @review.save
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'venues/show' }
        format.js  # <-- idem
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @review.destroy
    redirect_to @booking
  end


end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
