class CreateRelationshipTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :relationship_types do |t|
      t.string :name
      t.string :english_name

      t.timestamps
    end
  end
end
