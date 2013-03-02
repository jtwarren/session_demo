class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # Set the session for the newly created user.
      # User will be "logged in".
      session[:user_id] = user.id
      redirect_to root_url, :notice => "You are signed up."
    else
      render :new
    end
  end
end