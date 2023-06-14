class UsersController < ApplicationController
  def login
    @user = User.find_by(fullname: params[:user][:fullname])
    if @user
      render json: @user, status: 200
    else
      render json: { errors: ['User not found'] }, status: 422
    end
  end

  def signup
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 200
    else
      render json: { errors: @user.errors.full_messages }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:fullname)
  end
end
