class Api::V1::MaterialsController < ApplicationController
  def index
    @materials = Material.all
    render json: @materials.to_json
  end
end
