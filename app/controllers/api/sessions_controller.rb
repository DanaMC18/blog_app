class Api::SessionsController < ApplicationController

  def create 
    @user = User.find_by_credentials(params[:username], params[:password])
    if @user
      log_in(@user)
      # render 'api/users/show'
      render json: {user: @user.username}
    else
      render json: {errors: ["invalid credentials"]}, status: 404
    end
  end

  def destroy
    if logged_in?
      log_out
      render json: nil
    else
      render json: {errors: ["unable to logout"]}, status: 404
    end
  end

end
