class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :task_id 
      t.text :name
      t.text :memo

      t.timestamps null: false
    end
  end
end
