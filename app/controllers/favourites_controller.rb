class FavouritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favourites = current_user.favourites.includes(:car)
    render json: @favourites
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = current_user.favourites.create(favourite_params)
    if @favourite.save
      render json: @favourite
    else
      render json: { errors: @favourite.errors.full_messages }, status: 422
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
  end

  private

  def favourite_params
    params.require(:favourite).permit(:car_id, :user_id)
  end
end
