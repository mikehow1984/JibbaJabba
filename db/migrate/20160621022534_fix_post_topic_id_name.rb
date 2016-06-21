class FixPostTopicIdName < ActiveRecord::Migration
  def change
  	rename_column :posts, :topic_id, :topic
	end
end
