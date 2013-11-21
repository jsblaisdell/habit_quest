class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks
    @new_task = Task.new
  end

  def create
    @task = current_user.tasks.create(task_params)

    redirect_to action: 'index'
  end

  def destroy
    @task = Task.destroy(params[:id])

    redirect_to action: 'index'
  end

  def update
    @task = Task.find(params[:id])
    Task.toggle_status(@task)

    redirect_to action: 'index'
  end

  private

  def task_params
    params.require(:task).permit(:name, :value, :due_date)
  end
end
