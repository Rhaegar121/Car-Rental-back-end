<<<<<<< HEAD
class CarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.price >= 0
      if @car.save
        render json: @car
      else
        render json: { errors: @car.errors.full_messages }, status: 422
      end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
  end

  private

  def car_params
    params.require(:car).permit(:name, :price, :ratings, :image)
  end
end
=======
class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def new
    @car = Car.new
  end

  def create
    @user = User.find(params[:user_id])
    @car = @user.cars.new(car_params)
    if @car.save
      render json: @car, status: 200
    else
      render json: { errors: @car.errors.full_messages }, status: 422
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render json: { message: 'Car deleted' }, status: 200
  end

  private

  def car_params
    params.require(:car).permit(:name, :price, :ratings, :image, :description)
  end
end
>>>>>>> feature
