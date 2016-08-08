class Topic < ActiveRecord::Base
	#include Cloudsearchable
	#implement cloudsearchable when development is working

	has_many :posts, :dependent => :destroy
	accepts_nested_attributes_for :posts

	mount_uploader :attach, AttachUploader
	validates :attach, file_size: { less_than_or_equal_to: 4.gigabytes }
	validates_presence_of :attach
	validates :title, :length => { :minimum => 3, :maximum => 50, :too_short => "Titles must be at least %{count} characters long", :too_Long => "Titles cannot be over %{count} characters long" }, :presence => true
	
	validates :content, :length => { :minimum => 5, :maximum => 500, :too_short => "Content must be at least %{count} characters long", :too_Long => "Content cannot be over %{count} characters long" }, :presence => true

	searchable do
		text (:title)
		text (:content)
		text (:posts) do
			posts.map(&:content).compact.join(" ")
		end

		integer (:unix_time)
		integer (:id)
		string :sort_title do
			title.downcase.gsub(/^(an?|the)?/, '')
		end
	end
	#Cloudsearchable search
	#attr_accessor :title, :content, :posts, :unix_time, :id
	
	#index_in_cloudsearch do |idx|
		#text :topic_title, :result_enabled => true, :search_enabled => true, :source => :title			
		#text :topic_content, :result_enabled => true, :search_enabled => true, :source => :content
		#how to make this work for cloudsearchable
		#text (:posts) do 
			#posts.map(&:content).compact.join(" ")
		#end

		#integer (:unix_time)
		#integer (:id)
		#string :sort_title do
			#title.downcase.gsub(/^(an?|the)/, '')
		#end
	#end	
end


