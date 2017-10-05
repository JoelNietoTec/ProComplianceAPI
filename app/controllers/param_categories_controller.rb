class ParamCategoriesController < ApplicationController
  before_action :set_param_matrix
  before_action :set_param_category, only: [:show, :update, :destroy]

  # GET /param_categories
  def index
    # @param_categories = ParamCategory.all
    if @param_matrix
      json_response(@param_matrix.param_categories)
    else
      @param_categories = ParamCategory.all
      json_response(@param_categories)
    end
  end

  # GET /param_categories/1
  def show
    render json: @param_category
  end

  # POST /param_categories
  def create
    @param_category = ParamCategory.new(param_category_params)

    if @param_category.save
      render json: @param_category, status: :created, location: @param_category
    else
      render json: @param_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /param_categories/1
  def update
    if @param_category.update(param_category_params)
      render json: @param_category
    else
      render json: @param_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /param_categories/1
  def destroy
    @param_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_param_category
      @param_category = ParamCategory.find(params[:id])
    end

    def set_param_matrix
      if params[:param_matrix_id]
        @param_matrix = ParamMatrix.find(params[:param_matrix_id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def param_category_params
      params.require(:param_category).permit(:param_matrix_id, :name, :english_name, :weighting)
    end
end
