class Api::V1::UserMaterialsController < ApplicationController
  def index
    @usermaterials = UserMaterial.all
    render json: @usermaterials.to_json
  end

  def update
    @usermaterial = UserMaterial.find(params[:id])
    @usermaterial.update(user_id: params[:user_id], material_id: params[:material_id], quantity: params[:quantity])
    # byebug
    render json: @usermaterial
  end
end
