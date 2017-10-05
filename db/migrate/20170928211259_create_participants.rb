class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.string :code
      t.string :first_name
      t.string :second_name
      t.string :third_name
      t.string :fourth_name
      t.references :gender, foreign_key: true
      t.date :birthdate
      t.string :email
      t.references :participant_type, foreign_key: true
      t.text :address
      t.string :website
      t.string :legal_representative
      t.string :phone
      t.string :mobile_phone
      t.references :param_matrix, foreign_key: true
      t.float :score
      t.references :created_by, references: :users
      t.boolean :is_pep

      t.timestamps
    end
  end
end
