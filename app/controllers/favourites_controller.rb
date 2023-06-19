class FavouritesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @favourites = @user.favourites.includes(:car)
    @cars = @favourites.map(&:car)
    render json: { cars: @cars, favourites: @favourites }
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @user = User.find(params[:user_id])
    @favourite = @user.favourites.new(favourite_params)
    if @favourite.save
      render json: @favourite, status: 200
    else
      render json: { errors: @favourite.errors.full_messages }, status: 422
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    render json: { message: 'Favourite removed' }, status: 200
  end

  private

  def favourite_params
    params.require(:favourite).permit(:car_id, :user_id)
  end
end
