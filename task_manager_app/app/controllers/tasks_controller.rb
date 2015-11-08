class TasksController < ApplicationController

	def create
		@task = Task.create(task_params)
		
		@project = Project.find(params[:projects_id])
		redirect_to @project
	end

	def task_params
		params.permit(:name, :users_id, :projects_id, :completed)
	end
	def update
		@task=Task.find(params[:id])
		@task.update_attributes(completed: true)
		@project = Project.find(@task.projects_id)
		redirect_to @project
	end
	def destroy
		
		@task = Task.find(params[:id])
		@project = Project.find(@task.projects_id)
    @task.destroy
    redirect_to @project
  end
end