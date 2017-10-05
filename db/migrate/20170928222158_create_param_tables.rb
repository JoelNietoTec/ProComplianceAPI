class CreateParamTables < ActiveRecord::Migration[5.1]
  def change
    create_table :param_tables do |t|
      t.references :table_type, foreign_key: true
      t.string :name
      t.string :english_name

      t.timestamps
    end
  end
end
