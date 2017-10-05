class CreateTaskStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :task_statuses do |t|
      t.string :name
      t.string :english_name

      t.timestamps
    end
  end
end
