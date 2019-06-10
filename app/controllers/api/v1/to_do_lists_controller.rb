class Api::V1::ToDoListsController < ApplicationController

    def index
      @todolists = ToDoList.all
      render json: @todolists
    end

    def create
      @todolist = ToDoList.create(todolist_params)
      render json: @todolist
    end

    def update

        @todo = ToDoList.find(params[:id])
        @todo.update(todolist_params)
        # byebug
        render json: @todo
    end

    def destroy
      @todolist = ToDoList.find(params[:id])
      @todolist.destroy
    end
  private

    def todolist_params
        params.require(:to_do_list).permit(:project_id, :item, :complete, :process_pic)
    end

end
