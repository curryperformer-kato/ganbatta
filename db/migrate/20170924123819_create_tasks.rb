class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :task_id 
      t.string :name
      t.string :memo
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
