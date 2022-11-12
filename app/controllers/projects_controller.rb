class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: %i[show edit update destroy]

  # GET /projects or /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1 or /projects/1.json
  def show
    set_project
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    set_project 
  end

  # POST /projects or /projects.json
  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice] = 'Project was successfully created.'
      redirect_to projects_url
      render :show
    else
      render :new
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    if @project.update(project_params)
      flash[:notice] = 'Project was successfully updated.'
      redirect_to projects_url
      render :show
    else
      render :edit
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    set_project
    @project.destroy
    flash[:notice] = 'Project deleted'
    redirect_to projects_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def project_params
    params.require(:project).permit(:name, :description, :user_id)
  end
end
