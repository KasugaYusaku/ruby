class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(name: params[:user][:name], email: params[:user][:email])
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end
end

