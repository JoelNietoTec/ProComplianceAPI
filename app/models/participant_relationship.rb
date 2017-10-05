class ParticipantRelationship < ApplicationRecord
  belongs_to :participant
  belongs_to :related_participant
  belongs_to :relationship_type
end
