class Topic < ActiveRecord::Base
	has_many :posts, :dependent => :destroy
	mount_uploader :attach, AttachUploader
	searchable do 
		text (:title)
		text (:content)
		text (:post_content) {posts.content}

		integer (:timestamp)

		string :sort_title do
			title.downcase.gsub(/^(an?|the)/, '')
		end
	end
end
