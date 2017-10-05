class CreateParamSubValues < ActiveRecord::Migration[5.1]
  def change
    create_table :param_sub_values do |t|
      t.references :param_value, foreign_key: true
      t.string :name
      t.string :english_name
      t.float :score

      t.timestamps
    end
  end
end
