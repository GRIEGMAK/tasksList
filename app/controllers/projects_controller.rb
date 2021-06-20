class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]

  def index
    @projects = Project.all
    render json: {projects: @projects}
  end

  def task_completed_check
    @project = Project.find(params[:project_id])
    return false unless @project
    @todo = @project.todos.find(params[:todo_id])
    return false unless @todo
    if(@todo.isCompleted == true)
      @todo.isCompleted = false
    else 
      @todo.isCompleted = true
    end
    @todo.save()
  end
end
