class Session < ActiveRecord::Base
	has_many :phases, dependent: :destroy
	has_many :opinions, through: :phases

	def create_Phases
		self.phases.clear
		Picture.all.each do |existing_picture|
			self.phases.create(picture: existing_picture)
		end
		Music.all.each do |existing_music|
			self.phases.create(music: existing_music)
		end
		# self.phases
	end
end
