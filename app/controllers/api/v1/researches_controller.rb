class Api::V1::ResearchesController < ApplicationController
  def index
    @researches = Research.all
    render json: @researches
  end

  def create
    @research = Research.create(research_params)
    render json: @research
  end

  def destroy
    @research = Research.find(params[:id])
    @research.destroy
  end
private

  def research_params
      params.require(:research).permit(:project_id, :image)
  end
end
