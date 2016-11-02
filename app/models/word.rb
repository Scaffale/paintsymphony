class Word < ActiveRecord::Base
	mount_uploader :sound, SoundUploader
	validates :left,  presence: true
	validates :right,  presence: true
	has_many :opinions
end
