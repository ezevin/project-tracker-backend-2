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
    # @project.create(project_params)
    @pm = ProjectMaterial.create(pm_params)
    #
    # @pm.quantity # 5
    # # @user_materials = curr_user.user_materials.find_by(material_id: pm_params[:material_id])
    # @user_materials # user_id 1 material_id 5 quantity 10 (material name is plastic)
    # new_quantity = @user_materials.quantity - @pm.quantity
    # @user_materials.update(quantity: new_quantity)
    # # byebug
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
