class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
    @venues = Venue.all
  end

  def search
    @venues = Venue.search_by_name_and_description(params[:query])
  end


  def results
  end


end
