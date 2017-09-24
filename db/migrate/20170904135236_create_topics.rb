class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :content
      t.integer :task_id
      
      t.timestamps null: false
    end
  end
end