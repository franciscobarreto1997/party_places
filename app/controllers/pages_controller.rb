class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
    @venues = Venue.all
  end

  def search
    # @venues = Venue.where("name LIKE '%?%'", params[:name])
    @venues = Venue.all
  end

  def results
  end

end
