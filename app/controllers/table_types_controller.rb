class TableTypesController < ApplicationController
  before_action :set_table_type, only: [:show, :update, :destroy]

  # GET /table_types
  def index
    @table_types = TableType.all

    render json: @table_types
  end

  # GET /table_types/1
  def show
    render json: @table_type
  end

  # POST /table_types
  def create
    @table_type = TableType.new(table_type_params)

    if @table_type.save
      render json: @table_type, status: :created, location: @table_type
    else
      render json: @table_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /table_types/1
  def update
    if @table_type.update(table_type_params)
      render json: @table_type
    else
      render json: @table_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /table_types/1
  def destroy
    @table_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_type
      @table_type = TableType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def table_type_params
      params.require(:table_type).permit(:name, :english_name)
    end
end
