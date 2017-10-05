class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.date :begin_date
      t.date :expiration_date
      t.date :complete_date
      t.references :task_status, foreign_key: true
      t.references :participant, foreign_key: true

      t.timestamps
    end
  end
end
