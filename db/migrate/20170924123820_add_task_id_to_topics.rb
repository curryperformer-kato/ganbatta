class AddTaskIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :task_id, :integer
  end
end