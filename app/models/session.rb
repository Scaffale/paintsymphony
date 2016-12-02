class Session < ActiveRecord::Base
	has_many :phases, dependent: :destroy
	has_many :opinions, through: :phases
	has_many :finalphases, dependent: :destroy
	has_many :finalopinions, through: :finalphases

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

		Music.all.each do |music|
			self.finalphases.create(music: music)
		end
	end

	def self.to_csv
		csv_file = CSV.generate do |csv|
			csv << ['id', 'name', 'created_at', 'phase id', 'picture id', 'picture name', 'music id', 'music name', 'word id', 'word Left', 'word Right', 'mark', 'opinione updated_at', 'match 3 id', 'id musica', 'music name', 'picture id', 'picture name', 'match 3 updated_at']
			Session.all.each do |session|
				session.phases.each do |phase|
					if phase.picture
						phase.opinions.each do |opinion|
							csv << [session.id, session.name, session.created_at, phase.id, phase.picture.id, phase.picture.name, '', '', opinion.word.id, opinion.word.left, opinion.word.right, opinion.mark, opinion.updated_at]
						end
					else
						phase.opinions.each do |opinion|
							csv << [session.id, session.name, session.created_at, phase.id, '', '', phase.music.id, phase.music.name, opinion.word.id, opinion.word.left, opinion.word.right, opinion.mark, opinion.updated_at]
						end
					end
				end
				session.finalphases.each do |finalphase|
					finalphase.finalopinion.pictures.each do |picture|
						csv << [session.id, session.name, session.created_at, '', '', '', '', '', '', '', '', '', '', finalphase.finalopinion.id, finalphase.finalopinion.music.id, finalphase.finalopinion.music.name, picture.id, picture.name, finalphase.finalopinion.updated_at]
					end
				end
			end
		end
	end

	def to_csv
		csv_file = CSV.generate do |csv|
			csv << ['id', 'name', 'created_at', 'phase id', 'picture id', 'picture name', 'music id', 'music name', 'word id', 'word Left', 'word Right', 'mark', 'opinione updated_at', 'match 3 id', 'id musica', 'music name', 'picture id', 'picture name', 'match 3 updated_at']
			self.phases.each do |phase|
				if phase.picture
					phase.opinions.each do |opinion|
						csv << [self.id, self.name, self.created_at, phase.id, phase.picture.id, phase.picture.name, '', '', opinion.word.id, opinion.word.left, opinion.word.right, opinion.mark, opinion.updated_at]
					end
				else
					phase.opinions.each do |opinion|
						csv << [self.id, self.name, self.created_at, phase.id, '', '', phase.music.id, phase.music.name, opinion.word.id, opinion.word.left, opinion.word.right, opinion.mark, opinion.updated_at]
					end
				end
			end
			self.finalphases.each do |finalphase|
				finalphase.finalopinion.pictures.each do |picture|
					csv << [self.id, self.name, self.created_at, '', '', '', '', '', '', '', '', '', '', finalphase.finalopinion.id, finalphase.finalopinion.music.id, finalphase.finalopinion.music.name, picture.id, picture.name, finalphase.finalopinion.updated_at]
				end
			end
		end
	end
end
