class ProjectsController < ApplicationController
    def new
        
    end
    
    def create
        @project = Project.new(article_params)
 
        @project.save
        redirect_to @project
    end
    
    def show
        @project = Project.find(params[:id])
    end
    
    private
        def article_params
            params.require(:project).permit(:title, :text)
        end
end
