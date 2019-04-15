class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :description
      t.integer :employee_id
      t.boolean :completed
      t.string :due_date
    end
  end
end
