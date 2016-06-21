class AddThumbToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :thumb, :string
  end
end
