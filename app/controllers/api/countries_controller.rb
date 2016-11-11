class API::CountriesController < ApplicationController
  before_action :authenticate_user!

  def index
    # Find the distinct continent names
    render json: Country.order(:name).group_by(&:continent)
  end
end
