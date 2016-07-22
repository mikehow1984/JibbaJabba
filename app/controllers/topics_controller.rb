class TopicsController < ApplicationController
	helper FormatTimeHelper
	helper GeoDistanceHelper
	helper QuotePostHelper

	def index
		@topics = nil
		unless params[:query].nil? || params[:query].strip.empty?	
			self.geoloc
			@search = Sunspot.search Topic do
				any do
					fulltext(params[:query], :fields => [:title])	
					fulltext(params[:query], :fields => [:content])
					fulltext(params[:query], :fields => [:posts])
				end
			end
			@topics = @search.results
		end
		
		@topics
	end

	def new
		@topic = Topic.new
	end

	def create 
		@topic = Topic.new(topic_params)
		@topic.unix_time = Time.now.to_i
		self.geoloc
		p @lat_lng
		unless @lat_lng.nil?
			@topic.coord_lat = @lat_lng[0]
			@topic.coord_long = @lat_lng[1]
		end
		if request.remote_ip == '127.0.0.1'
			@topic.ip = rand_ip_address		
		else
			@topic.ip = request.remote_ip
		end
		if @topic.save
			flash[:notice] = "Topic has been created! #{@topic.coord_lat}, #{@topic.coord_long}"
			redirect_to @topic
		else
		end
	end

	def search

	end
	
	def geoloc	
		if defined?(@lat_lng) == nil
			@lat_lng = nil
		end
		unless cookies[:lat_lng].nil?
			@lat_lng = cookies[:lat_lng].split("|")
		end
	end

	def show 
		@topic = Topic.find(params[:id])
		@post = Post.new
	end
	
	private
	def rand_ip_address
		r = Random.new
		ip_addrs = ['123.45.67.89', '165.23.54.76', '69.213.23.54', '133.65.23.76', '111.23.64.2']
		ip_addrs[r.rand(ip_addrs.length)]
	end

	def topic_params
		params.require(:topic).permit(:title, :content, :attach, :thumb, :coord_lat, :coord_long, :unix_time, :lat, :long, :ip, posts_attributes: [:content])
	end
end
