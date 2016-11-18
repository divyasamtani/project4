class API::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: User.all
  end

  def user_profile
    render json: current_user
  end
# AND friendships.friend_id = users.id
  def search_user
    if (params[:name].length >= 1)
        users = User.where("users.id != ? AND users.name ILIKE ?", current_user.id ,"%#{params[:name]}%").where.not(id: current_user.friends.select(:id).pluck(:id))
        render json: users
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
    @friend = User.find_by(id: params[:id])
    @friend_countries = @friend.user_countries
    render json: {friend: @friend, friend_countries: @friend_countries}
  end
end


