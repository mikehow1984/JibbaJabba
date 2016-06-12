class Topic < ActiveRecord::Base
	has_many :posts, :dependent => :destroy
	mount_uploader :attach, AttachUploader
	validates :attach, file_size: { less_than_or_equal_to: 4.gigabytes }

	searchable do 
		text (:title)
		text (:content)
		text (:post_content_search)

		integer (:unix_time)

		string :sort_title do
			title.downcase.gsub(/^(an?|the)/, '')
		end
	end
	
	def post_content_search
		self.posts.map{|post| post.content}
	end
		
end


