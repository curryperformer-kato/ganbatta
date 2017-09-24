class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :name
      t.string :memo
      
      t.timestamps null: false
    end
  end
end