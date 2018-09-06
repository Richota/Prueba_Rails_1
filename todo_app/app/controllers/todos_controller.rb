class TodosController < ApplicationController
  before_action :find_todo, only: %i[show edit update destroy complete]
  before_action :sel_todos, only: %i[index list]
  def index; end

  def list; end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to todos_path
  end

  def show; end

  def edit; end

  def update
    @todo.update(todo_params)
    redirect_to todos_path
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    @todo.completed = true
    @todo.save
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:description, :completed)
  end

  def sel_todos
    @todos = Todo.all
  end

  def find_todo
    @todo = Todo.find(params[:id])
  end
end
