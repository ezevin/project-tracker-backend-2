class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json:@user.to_json
    # (only: [:id, :name, :username], include: [projects: {only: [:id, :title]}, user_materials: {only: [materials: {only: [:label]}]}])
  end
end
