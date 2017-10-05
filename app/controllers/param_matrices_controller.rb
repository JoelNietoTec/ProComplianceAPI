class ParamMatricesController < ApplicationController
  before_action :set_param_matrix, only: [:show, :update, :destroy]

  # GET /param_matrices
  def index
    @param_matrices = ParamMatrix.all

    render json: @param_matrices
  end

  # GET /param_matrices/1
  def show
    render json: @param_matrix
  end

  # POST /param_matrices
  def create
    @param_matrix = ParamMatrix.new(param_matrix_params)

    if @param_matrix.save
      render json: @param_matrix, status: :created, location: @param_matrix
    else
      render json: @param_matrix.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /param_matrices/1
  def update
    if @param_matrix.update(param_matrix_params)
      render json: @param_matrix
    else
      render json: @param_matrix.errors, status: :unprocessable_entity
    end
  end

  # DELETE /param_matrices/1
  def destroy
    @param_matrix.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_param_matrix
      @param_matrix = ParamMatrix.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def param_matrix_params
      params.require(:param_matrix).permit(:name, :code, :description, :matrix_type_id)
    end
end
