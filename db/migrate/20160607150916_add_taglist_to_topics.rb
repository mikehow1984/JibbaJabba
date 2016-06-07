class AddTaglistToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :taglist, :string
  end
end
