class Picture < ActiveRecord::Base
	mount_uploader :image, PaintUploader
	validates :name,  presence: true
	validates :image, presence: true
	has_many :phases
	has_many :finalphases
end
