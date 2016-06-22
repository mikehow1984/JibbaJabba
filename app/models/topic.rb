class Topic < ActiveRecord::Base
	has_many :posts, :dependent => :destroy
	mount_uploader :attach, AttachUploader
	validates :attach, file_size: { less_than_or_equal_to: 4.gigabytes }
	validates_presence_of :attach
	validates :title, :length => { :minimum => 3, :maximum => 50, :too_short => "Titles must be at least %{count} characters long", :too_Long => "Titles cannot be over %{count} characters long" }, :presence => true
	
	validates :content, :length => { :minimum => 5, :maximum => 500, :too_short => "Content must be at least %{count} characters long", :too_Long => "Content cannot be over %{count} characters long" }, :presence => true
	
	searchable do 
		text (:title)
		text (:content)
		join(:content, :prefix => 'post', :target => Post, :type => :text, :join => { :from => :topic_id, :to => :id })

		integer (:unix_time)
		integer (:id)
		string :sort_title do
			title.downcase.gsub(/^(an?|the)/, '')
		end
	end
	
	def post_content_search
		self.posts.map{|post| post.content}
	end
		
end


