class CreateParticipantRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :participant_relationships do |t|
      t.references :participant, foreign_key: true
      t.references :related_participant, references: :participants
      t.references :relationship_type, foreign_key: true

      t.timestamps
    end
  end
end
