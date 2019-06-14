class Api::V1::ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @projects.to_json(include: [inventories: {only: [:id, :label, :price, :description, :image_url, :place_purchased]}, researches: {only: [:id, :image]}, to_do_lists: {only: [:id, :item, :complete, :process_pic]}, notes: {only: [:id, :note]}])
  end

  def show
    @project = Project.find(params[:id])
    render json: @project.to_json(include: [inventories: {only: [:id, :label, :price, :description, :image_url, :place_purchased]}, researches: {only: [:id, :image]}, to_do_lists: {only: [:id, :item, :complete, :process_pic]}, notes: {only: [:id, :note]}])
  end

  def create
    @project = Project.create(project_params)
    render json: @project
  end

  def update
    get_project.update(project_params)
    # byebug
    render json: @project
  end

  def destroy
    get_project.destroy
    flash[:notice] = "You have deleted this project"
  end


private

  def get_project
    @project = Project.find(params[:id])
  end

  def project_params
      params.require(:project).permit(:title, :user_id, :start_date, :due_date, :budget, :finished, :details, :finished_image, :updated_at)
  end

  # def pm_params
  #     params.require(:project_material).permit(:project_id, :material_id, :quantity)
  # end
end
