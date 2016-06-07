class TopicsController < ApplicationController
	def index
	end

	def new
		@topic = Topic.new
	end
	
	def usercoords
		@lat = params[:lat].to_f
		@lng = params[:long].to_f
	end

	private

	def topic_params
		params.require(:topic).permit(:title, :content, :attachment, :content, :coord_lat, :coord_long, :unix_time, :lat, :long)
	end
end
