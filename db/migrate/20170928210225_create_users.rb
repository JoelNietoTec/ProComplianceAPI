class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email
      t.boolean :active

      t.timestamps
    end
    add_index :users, :user_name
    add_index :users, :email, unique: true
  end
end
