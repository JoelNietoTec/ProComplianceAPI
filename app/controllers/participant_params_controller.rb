class ParticipantParamsController < ApplicationController
  before_action :set_participant_param, only: [:show, :update, :destroy]

  # GET /participant_params
  def index
    @participant_params = ParticipantParam.all

    render json: @participant_params
  end

  # GET /participant_params/1
  def show
    render json: @participant_param
  end

  # POST /participant_params
  def create
    @participant_param = ParticipantParam.new(participant_param_params)

    if @participant_param.save
      render json: @participant_param, status: :created, location: @participant_param
    else
      render json: @participant_param.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /participant_params/1
  def update
    if @participant_param.update(participant_param_params)
      render json: @participant_param
    else
      render json: @participant_param.errors, status: :unprocessable_entity
    end
  end

  # DELETE /participant_params/1
  def destroy
    @participant_param.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant_param
      @participant_param = ParticipantParam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def participant_param_params
      params.require(:participant_param).permit(:participant_id, :param_matrix_id, :param_category_id, :param_id, :param_value_id, :param_sub_value_id, :score)
    end
end
