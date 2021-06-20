class TodosController < ApplicationController

  def create_task(project_id=nil, text=nil, isCompleted=false) 
    render json: {projects: @projects};
    return false unless text;
    if !project_id
      if (Project.where(title: 'others...').count != 0)
        @project = Project.find_by(title: 'others...');
      else
        @project = Project.create(title:'othets...');
      end
    else
      @project = Project.find(project_id);
    end
    @project.todos.create({text: text, isCompleted: isCompleted});
    @project.save();
  end

end
