# encoding: utf-8

class AttachUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick
  include CarrierWave::MimeTypes
	include VideoThumbnailer

	# Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

	version :thumb do
		process resize_to_fill: [150, 150], :if => :image?
		process generate_thumb: [{file_extension: 'png', quality: 10, size: "150x150"}], :if => :webm?
		def full_filename for_file
			if File.extname(for_file) == '.webm'
				png_name for_file, version_name, "png"
			else
				filetype = File.extname(for_file)
				filetype[0] = ''
				png_name for_file, version_name, filetype
			end
		end
		process :set_content_type, :if => :webm?
	end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end
	def extension_white_list
		%w(jpg jpeg gif png webm)
	end
  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
	

	
	def png_name for_file, version_name, format
		p %Q{#{version_name}_#{for_file.chomp(File.extname(for_file))}.#{format}}
		%Q{#{version_name}_#{for_file.chomp(File.extname(for_file))}.#{format}}
	end

	protected
		def image?(new_file)
			p "image detected"
			p new_file.content_type.start_with? 'image'
			new_file.content_type.start_with? 'image'
		end

		def webm?(new_file)
			p "video detected"
			p "If this a webm? #{new_file.content_type.include? 'webm'}"
			new_file.content_type.include? 'webm'
		end
end

