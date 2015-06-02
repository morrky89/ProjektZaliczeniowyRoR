class ProjectsController < ApplicationController
  
    before_action :authenticate_user!
    
    def index
        @projects = Project.all
    end
    
    def new
        @project = Project.new
        @users = User.all
    end
    
    
    def show
        @project = Project.find(params[:id])
        @users = User.all
    end
    
    
    def create
        @project = Project.new(project_params)
        @users = User.all
        @project.users<<@users
 
        if @project.save
          redirect_to @project
        else
          render 'new'
        end
    end
    
    def edit
        @project = Project.find(params[:id])
        @users = User.all
    end
    
    def update
      @project = Project.find(params[:id])
     
      if @project.update(project_params)
        redirect_to @project
      else
        render 'edit'
      end
    end
    
    def destroy
      @project = Project.find(params[:id])
      @project.destroy
     
      redirect_to projects_path
    end
    
   
    
    private
        def project_params
            params.require(:project).permit(:title, :text, :owner)
        end
end
