class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end
    
    def new
        @project = Project.new
    end
    
    def create
        @project = Project.new(article_params)
 
        if @project.save
            redirect_to @project
        else
            render 'new'
        end
    end
    
    def show
        @project = Project.find(params[:id])
    end
    
    private
        def article_params
            params.require(:project).permit(:title, :text)
        end
end
