class CreateParams < ActiveRecord::Migration[5.1]
  def change
    create_table :params do |t|
      t.references :param_category, foreign_key: true
      t.references :param_table, foreign_key: true
      t.string :name
      t.string :english_name
      t.string :description

      t.timestamps
    end
  end
end
