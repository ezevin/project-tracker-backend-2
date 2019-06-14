class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
    render json: @materials
    # .to_json(include: [user_materials: {only: [:id, :quantity, :material_id, :user_id]}, project_materials: {only: [:id, :quantity, :material_id, :project_id]}])
  end

  def show
    @material = Material.find(params[:id])
    render json: @material
    # .to_json(include: [user_materials: {only: [:id, :quantity, :material_id, :user_id]}, project_materials: {only: [:id, :quantity,:material_id, :project_id]}])
  end

  def create
    @material = Material.create(material_params)
    @user = User.find(params[:user_id])

    UserMaterial.create(user_id: params[:user_id], material_id: @material.id)

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
    @material = Material.find(params[:id])

      @material.update(material_params)

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
      params.require(:material).permit(:label, :price, :description, :image_url, :place_purchased, :quantity)
  end
end
