class CreateParamCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :param_categories do |t|
      t.references :param_matrix, foreign_key: true
      t.string :name
      t.string :english_name
      t.float :weighting

      t.timestamps
    end
  end
end
