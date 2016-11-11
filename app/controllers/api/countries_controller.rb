class API::CountriesController < ApplicationController
  before_action :authenticate_user!

  def index
    # Group countries by the continents
    render json: Country.order(:name).group_by(&:continent)
  end
end
