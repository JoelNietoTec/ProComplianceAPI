class CreateParamMatrices < ActiveRecord::Migration[5.1]
  def change
    create_table :param_matrices do |t|
      t.string :name
      t.string :code
      t.string :description
      t.references :matrix_type, foreign_key: true

      t.timestamps
    end
  end
end
