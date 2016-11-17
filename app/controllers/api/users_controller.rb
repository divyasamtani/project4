class API::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: User.all
  end

  def user_profile
    render json: current_user
  end

  def search_user
    if (params[:name].length >= 1 && (!current_user.name || current_user.friends.name))
        render json: User.where("name ILIKE ?", "%#{params[:name]}%")
    else
      render json: []
    end
  end

  def friend_country_search
    if (params[:name].length >= 1)
        render json: current_user.friends.joins(:countries).where("countries.name ILIKE ?", "#{params[:name]}")
    else
      render json: []
    end
  end

  def show
    @friend = Friendship.find_by(id: params[:id]).friend
    @friend_countries = @friend.user_countries
    render json: {friend: @friend, friend_countries: @friend_countries}
  end
end


