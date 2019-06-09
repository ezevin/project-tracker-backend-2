class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
    render json: @materials.to_json
  end

  def create
    @material = Material.create(material_params)
    # create the material
    @user = User.find(params[:user_id])
    # find the user

    # add that material to that users usermaterials
    # byebug
    @user.materials << @material #-> UserMaterial.create()

    render json: @material
  end

  # def addtoproject
  #   byebug
  #   @material = Material.create(material_params)
  #   @project = Project.find(params[:project_id])
  #   @project.materials << @material
  #   render json: @material
  # end

  def update
    get_material.update(material_params)
    # byebug
    render json: @material
  end

  def destroy
    get_material.destroy
    flash[:notice] = "You have deleted this material"
  end

  private

  def get_material
    @material = Material.find(params[:id])
  end

  def material_params
      params.require(:material).permit(:label, :price, :description, :quantity, :image_url, :place_purchased)
  end
end
