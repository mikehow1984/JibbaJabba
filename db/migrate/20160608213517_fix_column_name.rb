class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :topics, :attachment, :attach
		rename_column :posts, :attachment, :attach
	end
end
