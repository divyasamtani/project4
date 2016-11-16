class API::TravelNotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_travelnotes, only: [:index]
  before_action :set_travelnote, only: [:update, :destroy]

  def index
    render json:  @travelnotes
  end

  def show
    @travelnote = current_user.travel_notes.find_by_id(params[:id])
    render json: @travelnote
  end


  def create
    @travelnote = current_user.travel_notes.new(travelnote_params)

    if @travelnote.save
      render json: @travelnote
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end


  def update
    @travelnote.assign_attributes(travelnote_params)

    if @travelnote.save
      render json: @travelnote
    else
      render json: @travelnote.errors.messages, status: 422
    end
  end

  def destroy
    if @travelnote.destroy
      head 201
    else
      render json: @travelnote.errors.messages, status: 404
    end
  end


# PRIVATE METHODS
private

  def set_travelnotes
      @travelnotes = current_user.travel_notes
  end

  def set_travelnote
    @travelnote = current_user.travel_notes.find_by(id: params[:id])
    if @travelnote.nil?
      render json: {message: "Cannot find '#{params[:id]}'"}
    end
  end

  def travelnote_params
    params.require(:travel_note).permit(:title, :body)
  end
end
