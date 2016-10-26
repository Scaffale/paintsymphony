class Picture < ActiveRecord::Base
	mount_uploader :image, PaintUploader
end
