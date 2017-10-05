class AddEnglishNameToParticipantTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :participant_types, :english_name, :string
  end
end
