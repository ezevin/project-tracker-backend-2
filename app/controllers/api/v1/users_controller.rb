class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json:@user.to_json(include: [projects: {only: [:id, :title, :start_date, :due_date, :budget, :finished, :details, :finished_image, :created_at]}, materials: {only: [:id, :label, :price, :description, :quantity, :image_url, :place_purchased]}])
  end
end
