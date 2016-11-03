class Session < ActiveRecord::Base
	has_many :phases, dependent: :destroy
	has_many :opinions, through: :phases
	after_create :create_Phases

	def create_Phases
		self.phases.clear
		@data_to_shuffle = Picture.all
		@shuffled_data = @data_to_shuffle.shuffle
		@shuffled_data.each do |existing_picture|
			self.phases.create(picture: existing_picture)
		end

		@data_to_shuffle = Music.all
		@shuffled_data = @data_to_shuffle.shuffle
		@shuffled_data.each do |existing_music|
			self.phases.create(music: existing_music)
		end
	end
end
