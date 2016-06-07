class ChangeTitleFormatInTopics < ActiveRecord::Migration
  def up
		change_column :topics, :title, :text
  end

	def down
		change_column :topics, :title, :string
	end
end
