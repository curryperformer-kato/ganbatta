class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :topic, index: true, foreign_key: true
      t.text :task_name

      t.timestamps null: false
    end
  end
end
