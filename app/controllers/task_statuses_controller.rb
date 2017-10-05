class TaskStatusesController < ApplicationController
  before_action :set_task_status, only: [:show, :update, :destroy]

  # GET /task_statuses
  def index
    @task_statuses = TaskStatus.all

    render json: @task_statuses
  end

  # GET /task_statuses/1
  def show
    render json: @task_status
  end

  # POST /task_statuses
  def create
    @task_status = TaskStatus.new(task_status_params)

    if @task_status.save
      render json: @task_status, status: :created, location: @task_status
    else
      render json: @task_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /task_statuses/1
  def update
    if @task_status.update(task_status_params)
      render json: @task_status
    else
      render json: @task_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /task_statuses/1
  def destroy
    @task_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_status
      @task_status = TaskStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_status_params
      params.require(:task_status).permit(:name, :english_name)
    end
end
