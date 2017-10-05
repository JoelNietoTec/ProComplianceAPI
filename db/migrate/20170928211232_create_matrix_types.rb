class CreateMatrixTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :matrix_types do |t|
      t.string :name
      t.string :english_name

      t.timestamps
    end
  end
end
