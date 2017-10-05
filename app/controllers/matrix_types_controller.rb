class MatrixTypesController < ApplicationController
  before_action :set_matrix_type, only: [:show, :update, :destroy]

  # GET /matrix_types
  def index
    @matrix_types = MatrixType.all

    render json: @matrix_types
  end

  # GET /matrix_types/1
  def show
    render json: @matrix_type
  end

  # POST /matrix_types
  def create
    @matrix_type = MatrixType.new(matrix_type_params)

    if @matrix_type.save
      render json: @matrix_type, status: :created, location: @matrix_type
    else
      render json: @matrix_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /matrix_types/1
  def update
    if @matrix_type.update(matrix_type_params)
      render json: @matrix_type
    else
      render json: @matrix_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /matrix_types/1
  def destroy
    @matrix_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrix_type
      @matrix_type = MatrixType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def matrix_type_params
      params.require(:matrix_type).permit(:name, :english_name)
    end
end
