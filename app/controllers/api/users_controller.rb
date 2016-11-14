class API::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: User.all
  end

  def user_profile
    render json: current_user
  end
end


