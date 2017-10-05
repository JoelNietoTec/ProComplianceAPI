class ParticipantDocument < ApplicationRecord
  belongs_to :participant
  belongs_to :document_type
  belongs_to :country
end
