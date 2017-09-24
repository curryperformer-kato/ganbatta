class AddTaskIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :task_id, :integer
    add_column :topics, :name, :string
    add_column :topics, :memo, :string
  end
end