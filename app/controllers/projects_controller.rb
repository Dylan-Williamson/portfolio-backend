class ProjectsController < ApplicationController

    before_action :set_project, only: [:show]

    def index
        render json: Project.all
    end

    def show
        render json: @project
    end

    private

    def set_project
        @project = Project.find_by_id(params[:id])
    end
end
