class Post < ActiveRecord::Base
	belongs_to :topic

	mount_uploader :attach, AttachUploader
	validates :attach, file_size: { less_than_or_equal_to: 4.gigabytes }
end
