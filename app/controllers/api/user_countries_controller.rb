class API::UserCountriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_usercountries
  before_action :set_usercountry, only: [:show, :update, :destroy]

  def index
  end

  def create
    @usercountry = current_user.list_bookmarks.new(bookmark_params)

    if @usercountry.save
      render json: @bookmark
    else
      render json: @bookmark.errors.messages, status: 422
    end
  end

  def destroy
    @usercountry.destroy
    head :ok
  end

# PRIVATE METHODS
  private

    def set_usercountries
      @usercountries = current_user.user_countries
    end

    def set_usercountry
      @usercountry = current_user.user_countries.find_by(id: params[:id])
      if @bookmark.nil?
        render json: {message: "Cannot find '#{params[:id]}'"}, status: 400
      end
    end

    def usercountry_params
      params.require(:user_country).permit(:country_id)
    end
end
