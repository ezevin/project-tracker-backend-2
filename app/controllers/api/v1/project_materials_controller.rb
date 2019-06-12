class Api::V1::ProjectMaterialsController < ApplicationController

  def index
    @pm = ProjectMaterial.all
    render json: @pm
  end

  def show
    @pm = ProjectMaterial.find(params[:id])
    render json: @pm
  end

  def create
    @pm = ProjectMaterial.create(pm_params)
    # byebug
    render json: @pm
  end

  def destroy
    # byebug
    @projectmaterial = ProjectMaterial.find(params[:id])
    @projectmaterial.destroy
    # flash[:notice] = "You have deleted this project"
  end
  private

  def pm_params
      params.require(:project_material).permit(:project_id, :material_id)
  end

end
