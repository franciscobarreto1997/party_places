class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
    @venues = Venue.all
  end

  def search

    @venues = Venue.where(location: params["city"])

    #@venues = Venue.all
  end

  def results
  end


end
