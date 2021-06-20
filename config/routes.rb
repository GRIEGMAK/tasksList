Rails.application.routes.draw do

  get 'projects/', to: 'projects#index'
  post 'todos/', to: 'todos#create_task'
  get 'projects/:project_id/todos/:todo_id', to: 'projects#task_completed_check'
end
