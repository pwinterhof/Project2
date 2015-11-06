class ProjectsController < ApplicationController
before_action :authenticate_user!
	def index
		@project = Project.all
		@current_user = current_user
		
	end
	def show
	end
	def create
		
		@project = Project.create(project_params)
		redirect_to '/'
	end
	def project_params
		params.permit(:project_name, :users_id)
	end
	def destroy
		@project = Project.find(params[:id])
    @project.destroy
    redirect_to '/'
   end


end