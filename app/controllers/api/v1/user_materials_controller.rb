class Api::V1::UserMaterialsController < ApplicationController
  def index
    @usermaterials = User.all
    render json: @usermaterials.to_json
  end

end
