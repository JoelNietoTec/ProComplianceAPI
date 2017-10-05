class ParamTablesController < ApplicationController
  before_action :set_param_table, only: [:show, :update, :destroy]

  # GET /param_tables
  def index
    @param_tables = ParamTable.all

    render json: @param_tables, includes: "**"
  end

  # GET /param_tables/1
  def show
    render json: @param_table
  end

  # POST /param_tables
  def create
    @param_table = ParamTable.new(param_table_params)

    if @param_table.save
      render json: @param_table, status: :created, location: @param_table
    else
      render json: @param_table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /param_tables/1
  def update
    if @param_table.update(param_table_params)
      render json: @param_table
    else
      render json: @param_table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /param_tables/1
  def destroy
    @param_table.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_param_table
      @param_table = ParamTable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def param_table_params
      params.require(:param_table).permit(:table_type_id, :name, :english_name)
    end
end
