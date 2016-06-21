class RemoveTaglistFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :taglist, :string
  end
end
