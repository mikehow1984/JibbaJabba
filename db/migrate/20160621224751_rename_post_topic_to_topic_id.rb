class RenamePostTopicToTopicId < ActiveRecord::Migration
  def change
  	rename_column :posts, :topic, :topic_id
	end
end
