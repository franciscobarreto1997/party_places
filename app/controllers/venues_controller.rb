class VenuesController < ApplicationController
  before_action :set_booking, only: [:show, :search]
  def index
    @venues = Venue.all
  end

  def show
  end

  def search
  end

  private


  def set_venue
    @venue = Venue.find(params[:id])
  end

end
