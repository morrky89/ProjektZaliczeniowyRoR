class TicketsController < ApplicationController
    before_action :authenticate_user!
      
    def index
        @project = Project.find(params[:project_id])
        @tickets = @project.tickets.all
    end
    
    def new
        @project = Project.find(params[:project_id])
        @ticket = Ticket.new
    end
    
    def show
        @project = Project.find(params[:project_id])
        @ticket = @project.tickets.find(params[:id])
    end
    
    
    def create
        @project = Project.find(params[:project_id])
        @ticket = @project.tickets.create(ticket_params)
 
        if @ticket.save
          redirect_to project_tickets_path
        else
          render 'new'
        end
    end
    
    def edit
        @project = Project.find(params[:project_id])
        @ticket = @project.tickets.find(params[:id])
    end
    
    def update
      @project = Project.find(params[:project_id])
      @ticket = @project.tickets.find(params[:id])
     
      if @project.tickets.update(params[:id], ticket_params)
        redirect_to project_tickets_path
      else
        render 'edit'
      end
    end
    
    def destroy
      @project = Project.find(params[:project_id])
      @ticket = @project.tickets.find(params[:id])
      @ticket.destroy
     
      redirect_to project_tickets_path
    end
    
   
    
    private
        def ticket_params
            params.require(:ticket).permit(:title, :text, :priority, :difficulty, :status)
        end
end
