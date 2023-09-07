class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])
  
    if @user.update(user_params)
      render json: @user, status: 200
    else
      render json: { errors: @user.errors.full_messages }, status: 422
    end
  end

  def login
    @user = User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password])

    if @user
      session[:user_id] = @user.id
      render json: @user, status: 200
    else
      render json: { errors: ['User not found'] }, status: 422
    end
  end

  def signup
    @user = User.create!(
      fullname: params[:user][:fullname],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation]
    )

    if @user
      session[:user_id] = @user.id
      render json: @user, status: 200
    else
      render json: { errors: @user.errors.full_messages }, status: 422
    end
  end

  def logout
    reset_session
    render json: { message: 'Logged out' }, status: 200
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :icon, :email)
  end
end
