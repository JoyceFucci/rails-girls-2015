class Joinha < ActiveRecord::Base
	has_many :comments
	mount_uploader :photo, PhotoUploader
end
