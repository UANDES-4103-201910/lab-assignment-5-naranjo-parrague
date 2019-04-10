class UsersController < ApplicationController
  def create
    @user = User.new(name: params[:name], last_name: params[:last_name], email: params[:email],password: params[:password], address: params[:address])
    render json: @user
  end

  def destroy
    @user = User.find(params[:id]).delete
    render json: {}
  end

  def update
    @user = User.find(params[:id])
    @user.update(name: params[:name], last_name: params[:last_name], email: params[:email],password: params[:password], address: params[:address])
    render json: @user
  end

  def user_with_most_tickets
  end
end
