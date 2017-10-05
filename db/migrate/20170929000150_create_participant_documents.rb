class CreateParticipantDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :participant_documents do |t|
      t.references :participant, foreign_key: true
      t.references :document_type, foreign_key: true
      t.string :document_code
      t.date :expedition_date
      t.date :expiration_date
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
