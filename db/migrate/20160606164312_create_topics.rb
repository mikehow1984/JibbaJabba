class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :attachment
      t.text :content
      t.float :coord_lat
      t.float :coord_long
      t.integer :unix_time

      t.timestamps null: false
    end
  end
end
