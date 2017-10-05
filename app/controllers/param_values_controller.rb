class ParamValuesController < ApplicationController
  before_action :set_param_table, only:[:index]
  before_action :set_param_value, only: [:show, :update, :destroy]

  # GET /param_values
  def index
    # @param_values = ParamValue.all
    if @param_table
      json_response(@param_table.param_values)
    else
      @param_values = ParamValue.all
      json_response(@param_values)
    end
    
  end

  # GET /param_values/1
  def show
    render json: @param_value
  end

  # POST /param_values
  def create
    @param_value = ParamValue.new(param_value_params)

    if @param_value.save
      render json: @param_value, status: :created, location: @param_value
    else
      render json: @param_value.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /param_values/1
  def update
    if @param_value.update(param_value_params)
      render json: @param_value
    else
      render json: @param_value.errors, status: :unprocessable_entity
    end
  end

  # DELETE /param_values/1
  def destroy
    @param_value.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_param_value
      @param_value = ParamValue.find(params[:id])
    end

    # Set parent param table
    def set_param_table
      if params[:param_table_id]
        @param_table = ParamTable.find(params[:param_table_id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def param_value_params
      params.require(:param_value).permit(:param_table_id, :name, :english_name, :score)
    end
end
