class ParticipantRelationshipsController < ApplicationController
  before_action :set_participant_relationship, only: [:show, :update, :destroy]

  # GET /participant_relationships
  def index
    @participant_relationships = ParticipantRelationship.all

    render json: @participant_relationships
  end

  # GET /participant_relationships/1
  def show
    render json: @participant_relationship
  end

  # POST /participant_relationships
  def create
    @participant_relationship = ParticipantRelationship.new(participant_relationship_params)

    if @participant_relationship.save
      render json: @participant_relationship, status: :created, location: @participant_relationship
    else
      render json: @participant_relationship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /participant_relationships/1
  def update
    if @participant_relationship.update(participant_relationship_params)
      render json: @participant_relationship
    else
      render json: @participant_relationship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /participant_relationships/1
  def destroy
    @participant_relationship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant_relationship
      @participant_relationship = ParticipantRelationship.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def participant_relationship_params
      params.require(:participant_relationship).permit(:participant_id, :related_participant_id, :relationship_type_id)
    end
end
