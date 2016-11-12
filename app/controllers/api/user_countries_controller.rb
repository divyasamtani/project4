class API::UserCountriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_usercountries, only: [:index]
  before_action :set_usercountry, only: [:destroy]

  def index
    render json:  @usercountries
  end

  def create
    @usercountry = current_user.user_countries.new(usercountry_params)

    if @usercountry.save
      current_user.update_stats
      render json: @usercountry
    else
      render json: @usercountry.errors.messages, status: 422
    end
  end

  def destroy
    @usercountry.destroy
    current_user.update_stats
    head :ok
  end

# PRIVATE METHODS
  private

    def set_usercountries
      @usercountries = current_user.user_countries
    end

    def set_usercountry
      @usercountry = current_user.user_countries.find_by(id: params[:id])
      if @usercountry.nil?
        render json: {message: "Cannot find '#{params[:id]}'"}, status: 400
      end
    end

    def usercountry_params
      params.require(:user_country).permit(:country_id)
    end
end
