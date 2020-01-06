class Api::V1::ToolsController < ApplicationController
    def index
      @tools = Tool.all
      render json: @tools.to_json
    end

    def show
      @tool = Tool.find(params[:id])
      render json: @tool.to_json
    end

    def create
      @tool = Tool.create(tool_params)
      render json: @tool
    end

    def update
      @tool = Tool.find(params[:id])
      @tool.update(tool_params)
      # byebug
      render json: @tool
    end

    def destroy
      get_tool.destroy
      flash[:notice] = "You have deleted this tool"
    end


  private

    def get_tool
      @tool = Tool.find(params[:id])
    end

    def tool_params
        params.require(:tool).permit(:user_id, :label, :category, :price, :description, :image_url, :place_purchased)
    end

end
