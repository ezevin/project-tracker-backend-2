class Api::V1::NotesController < ApplicationController
  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.create(note: params[:note], project_id: params[:project_id])
    render json: @note
  end

  def update
      @note = Note.find(params[:id])
      @note.update(note: params[:note])
      # byebug
      render json: @note
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
  end

end
