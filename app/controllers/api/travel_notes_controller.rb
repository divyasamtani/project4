class API::TravelNotesController < ApplicationController
  before_action :set_travelnotes, only: [:index]
  before_action :set_travelnote, only: [:show, :create, :update, :destroy]


  def index
  end

  def show
    @travelnote = current_user.travel_notes.find_by_id(params[:id])

    if @travelnote.nil?
      render json: { message: "Cannot find note" }, status: :not_found
    end
  end


  def create
    @travelnote = current_user.travel_notes.new(travelnote_params)

    if @travelnote.save
      # render success in Jbuilder
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
    @travelnote.destroy
    render json: { message: "Successfully deleted" }, status: :no_content
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
