class ProjectsController < ApplicationController

    def create
        project = Project.new(project_params)
    end

    private
    
    def project_params
        params.require(:project).permit(:title, :user_id)
    end
end
