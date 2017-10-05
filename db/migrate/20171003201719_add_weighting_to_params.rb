class AddWeightingToParams < ActiveRecord::Migration[5.1]
  def change
    add_column :params, :weighting, :float
  end
end
