class Music < ActiveRecord::Base
	mount_uploader :sound, SoundUploader
	validates :name,  presence: true
	validates :sound, presence: true
	has_many :phases
end
