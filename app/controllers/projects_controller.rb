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

  # def creater_test # Раскомментировать для создания списка задач
  #   @project = Project.create({title: 'семья'})
  #   @project.todos.create({text: 'Купить молоко', isCompleted: false})
  #   @project.todos.create({text: 'Заменить масло в двигателе до 23 апреля', isCompleted: false})
  #   @project.todos.create({text: 'Отправить письмо бабушке', isCompleted: true})
  #   @project.todos.create({text: 'Заплатить за квартиру', isCompleted: false})
  #   @project.todos.create({text: 'Забрать обувь из ремонта', isCompleted: false})
  #   @project.save()

  #   @project = Project.create({title: 'Работа'})
  #   @project.todos.create({text: 'Позвонить заказчику', isCompleted: true})
  #   @project.todos.create({text: 'Отправить документы', isCompleted: true})
  #   @project.todos.create({text: 'Заполнить отчет', isCompleted: false})
  #   @project.save()

  #   @project = Project.create({title: 'Прочее'})
  #   @project.todos.create({text: 'Позвонить другу', isCompleted: false})
  #   @project.todos.create({text: 'Подготовиться к поездке', isCompleted: false})
  #   @project.save()
  #   @project = Project.all
  #   render json: {projects: @project}
  # end


end
