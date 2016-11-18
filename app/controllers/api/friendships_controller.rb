class API::FriendshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :friend_params, only: [:create]
  before_action :set_friendship, only: [:destroy]
  before_action :set_friendship2, only: [:destroy]
  before_action :set_friendships, only: [:index]


  def index
  end

  def create
    @friendship  = current_user.friendships.new(friend_params)
    @friendship2 = Friendship.new(user_id: friend_params[:friend_id], friend_id: current_user.id)

    @friendship.transaction do
      @friendship.save
      @friendship2.save
    end

    if @friendship.id && @friendship2.id
      head 201
    else
      render json: {friendship: @friendship.errors.messages, friendship2: @friendship2.errors.messages}, status: 404
    end
  end

  def destroy
    @friendship.transaction do
      @friendship.destroy
      @friendship2.destroy
    end

    head 201
  end

# PRIVATE METHODS

private
  def set_friendships
    @friendships = current_user.friendships
  end

  def set_friendship2
    @friendship2 = Friendship.find_by(user_id: @friendship.friend_id, friend_id: current_user.id)

    if @friendship2.nil?
      render json: "Friend cannot be found", status: 404
    end
  end

  def set_friendship
    @friendship = Friendship.find_by(id: params[:id])

    if @friendship.nil?
      render json: "Friend cannot be found", status: 404
    end
  end

  def friend_params
    params.require(:friendship).permit(:friend_id)
  end

end
