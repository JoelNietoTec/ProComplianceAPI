class ParamsController < ApplicationController
  before_action :set_param_category
  before_action :set_param, only: [:show, :update, :destroy]

  # GET /params
  def index
    if @param_category
      json_response(@param_category.params)
    else
      @params = Param.all
      json_response(@params)
    end
  end

  # GET /params/1
  def show
    render json: @param
  end

  # POST /params
  def create
    @param = Param.new(param_params)

    if @param.save
      render json: @param, status: :created, location: @param
    else
      render json: @param.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /params/1
  def update
    if @param.update(param_params)
      render json: @param
    else
      render json: @param.errors, status: :unprocessable_entity
    end
  end

  # DELETE /params/1
  def destroy
    @param.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_param
      @param = Param.find(params[:id])
    end

    def set_param_category
      if params[:param_category_id]
        @param_category = ParamCategory.find(params[:param_category_id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def param_params
      params.require(:param).permit(:param_category_id, :param_table_id, :name, :english_name, :weighting, :description)
    end
end
