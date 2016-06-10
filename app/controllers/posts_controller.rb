class PostsController < ApplicationController
	helper FormatTimeHelper

	def index
	end

	def new
		@post = Post.new
	end

	def create 
		@post = Post.new(topic_params)
		@post.unix_time = Time.now.to_i
		@post.coord_lat = @lat
		@post.coord_long = @lng

		if @post.save
			flash[:notice] = "Topic has been created!"
			redirect_to Topic.find(params[:topic_id])
		else
		end
	end

	def show 
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
