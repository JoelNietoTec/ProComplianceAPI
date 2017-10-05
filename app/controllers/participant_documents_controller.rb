class ParticipantDocumentsController < ApplicationController
  before_action :set_participant_document, only: [:show, :update, :destroy]

  # GET /participant_documents
  def index
    @participant_documents = ParticipantDocument.all

    render json: @participant_documents
  end

  # GET /participant_documents/1
  def show
    render json: @participant_document
  end

  # POST /participant_documents
  def create
    @participant_document = ParticipantDocument.new(participant_document_params)

    if @participant_document.save
      render json: @participant_document, status: :created, location: @participant_document
    else
      render json: @participant_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /participant_documents/1
  def update
    if @participant_document.update(participant_document_params)
      render json: @participant_document
    else
      render json: @participant_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /participant_documents/1
  def destroy
    @participant_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant_document
      @participant_document = ParticipantDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def participant_document_params
      params.require(:participant_document).permit(:participant_id, :document_type_id, :document_code, :expedition_date, :expiration_date, :country_id)
    end
end
