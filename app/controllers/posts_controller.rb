class PostsController < ApplicationController
	helper FormatTimeHelper

	def index
	end

	def new
		@post = Post.new
		@topic = Topic.find(params[:topic_id])
	end

	def create
		@post = Post.new(post_params)
		@topic = Topic.find(params[:topic_id])
		@post.unix_time = Time.now.to_i
		@post.topic_id = params[:topic_id]
		self.geoloc
		unless @lat_lng.nil?
			@post.coord_lat = @lat_lng[0]
			@post.coord_long = @lat_lng[1]
		end
		if request.remote_ip == '127.0.0.1'
			@post.ip = rand_ip_address		
		else
			@post.ip = request.remote_ip
		end
		if @post.save
			flash[:notice] = "Post has been created!"
			redirect_to Topic.find(params[:topic_id])
		else
			render :action => 'new'
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
	def rand_ip_address
		r = Random.new
		ip_addrs = ['123.45.67.89', '165.23.54.76', '69.213.23.54', '133.65.23.76', '111.23.64.2']
		ip_addrs[r.rand(ip_addrs.length)]
	end
	def post_params
		params.require(:post).permit(:title, :content, :attach, :thumb, :coord_lat, :topic_id, :coord_long, :unix_time, :lat, :long, :ip)
	end
end
