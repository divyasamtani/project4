class API::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: User.all
  end

  def user_profile
    render json: current_user
  end

  def search_user
    puts ">>>>>"
    puts params[:name]
    render json: User.where("name ILIKE ?", "%#{params[:name]}%")
  end

  def show
    @friend = Friendship.find_by(id: params[:id]).friend
    @friend_countries = @friend.user_countries
    render json: {friend: @friend, friend_countries: @friend_countries}
  end
end


