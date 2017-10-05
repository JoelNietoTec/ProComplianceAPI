class CreateTableTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :table_types do |t|
      t.string :name
      t.string :english_name

      t.timestamps
    end
  end
end
