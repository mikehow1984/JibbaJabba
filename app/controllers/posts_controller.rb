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
		self.geoloc
		@post.coord_lat = @lat_lng[0]
		@post.coord_long = @lat_lng[1]


		if @post.save
			flash[:notice] = "Post has been created!"
			redirect_to Topic.find(params[:topic_id])
		else
		end
	end

	def show 
	end

	def geoloc
		if defined?(@lat_lng) == nil
			@lat_lng = nil
		end
		unless cookies[:lat_lng].nil?
			@lat_lng = cookies[:lat_lng].split("|")
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :attach, :thumb, :content, :coord_lat, :coord_long, :unix_time, :lat, :long)
	end
end
