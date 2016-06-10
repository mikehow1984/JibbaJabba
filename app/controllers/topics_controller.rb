class TopicsController < ApplicationController
	helper FormatTimeHelper

	def index
		search = Sunspot.search Topic do
			keywords :query, :fields => [:title, :content, :post_content_search]
		end

		@topics = search.results
	end

	def new
		@topic = Topic.new
	end

	def create 
		@topic = Topic.new(topic_params)
		@topic.unix_time = Time.now.to_i
		@lat_lng = cookies[:lat_lng].split("|")
		@topic.coord_lat = @lat_lng[0]
		@topic.coord_long = @lat_lng[1]

		if @topic.save
			flash[:notice] = "Topic has been created!"
			redirect_to @topic
		else
		end
	end

	def search

	end

	def show 
		@topic = Topic.find(params[:id])
	end
	
	def usercoords
		@lat = params[:lat].to_f
		@lng = params[:long].to_f
	end

	private

	def topic_params
		params.require(:topic).permit(:title, :content, :attach, :content, :coord_lat, :coord_long, :unix_time, :lat, :long)
	end
end
