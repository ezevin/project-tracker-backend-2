class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    # render json: @user.to_json(include: [projects: {only: [:id, :title, :start_date, :due_date, :budget, :finished, :details, :finished_image, :created_at, :updated_at]}, materials: {only: [:id, :label, :price, :description, :quantity, :image_url, :place_purchased]}])
    render json: @user
  end

  def create
    @user = User.create(username: params[:username], password: params[:password])
    # byebug
    render json: @user
  end

  def update
    # byebug
    get_user.update(user_params)
    render json: @user
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :name, :profile_picture, :age, :about_me)
  end
end
