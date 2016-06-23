class RemoveColumnPostsTopicId < ActiveRecord::Migration
  def change
  	remove_column :posts, :topic_id
	end
end
