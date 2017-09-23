class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :content
      
      t.timestamps null: false
    end
  end
end