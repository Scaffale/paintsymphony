class Finalphase < ActiveRecord::Base
	belongs_to :session
	belongs_to :music
	has_and_belogns_to_many :pictures

	after_create :add_pictures

	def add_pictures
		debugger
		self.pictures.clear
		Picture.all.each do |picture|
			self.pictures.create(picture: picture)
		end
	end
end
