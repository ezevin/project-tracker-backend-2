class Api::V1::InventoriesController < ApplicationController
    def index
      @inventories = Inventory.all
      render json: @inventories
    end

    def show
      @inventory = Inventory.find(params[:id])
      render json: @inventory
    end

    def create
      @inventory = Inventory.create(inventory_params)
      render json: @inventory
    end

    def update
      @inventory = Inventory.find(params[:id])

        @inventory.update(inventory_params)

      render json: @inventory
    end

    def destroy
      get_inventory.destroy
    end

    private

    def get_inventory
      @inventory = Inventory.find(params[:id])
    end

    def inventory_params
        params.require(:inventory).permit(:project_id, :label, :price, :description, :image_url, :place_purchased)
    end

end
