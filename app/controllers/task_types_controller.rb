class TaskTypesController < ApplicationController
  before_action :logged_in_user, only: [:create]

  def new
    @task_type = TaskType.new
  end

  def create
    @task_type = TaskType.new(task_type_params)
    if @task_type.save
      flash[:success] = "Task Type Saved."
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def task_type_params
    params.require(:task_type).permit(:typestitle)
  end

end
