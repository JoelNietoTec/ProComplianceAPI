class CreateParticipantParams < ActiveRecord::Migration[5.1]
  def change
    create_table :participant_params do |t|
      t.references :participant, foreign_key: true
      t.references :param_matrix, foreign_key: true
      t.references :param_category, foreign_key: true
      t.references :param, foreign_key: true
      t.references :param_value, foreign_key: true
      t.references :param_sub_value, foreign_key: true
      t.float :score

      t.timestamps
    end
  end
end
