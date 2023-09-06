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
    @car = Car.find(params[:favourite][:car_id])
  
    # Check if a favorite with the same car_id exists for this user
    if @user.favourites.exists?(car_id: @car.id)
      render json: { errors: 'This car is already in your reservation.' }, status: 422
    else
      @favourite = @user.favourites.new(favourite_params)
      if @favourite.save
        render json: { cars: @car, favourites: @favourite }, status: 200
      else
        render json: { errors: @favourite.errors.full_messages }, status: 422
      end
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
