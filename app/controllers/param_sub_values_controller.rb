class ParamSubValuesController < ApplicationController
  before_action :set_param_sub_value, only: [:show, :update, :destroy]

  # GET /param_sub_values
  def index
    @param_sub_values = ParamSubValue.all

    render json: @param_sub_values
  end

  # GET /param_sub_values/1
  def show
    render json: @param_sub_value
  end

  # POST /param_sub_values
  def create
    @param_sub_value = ParamSubValue.new(param_sub_value_params)

    if @param_sub_value.save
      render json: @param_sub_value, status: :created, location: @param_sub_value
    else
      render json: @param_sub_value.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /param_sub_values/1
  def update
    if @param_sub_value.update(param_sub_value_params)
      render json: @param_sub_value
    else
      render json: @param_sub_value.errors, status: :unprocessable_entity
    end
  end

  # DELETE /param_sub_values/1
  def destroy
    @param_sub_value.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_param_sub_value
      @param_sub_value = ParamSubValue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def param_sub_value_params
      params.require(:param_sub_value).permit(:param_value_id, :name, :english_name, :score)
    end
end
