class TopicsController < ApplicationController
	def index
	end

	def new
		@topic = Topic.new
	end

	def search
		@search = Topic.search do
			keywords :query, :fields => [:title, :content, :post_content]
		end

		@topics = @search.results
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
