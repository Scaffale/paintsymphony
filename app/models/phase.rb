class Phase < ActiveRecord::Base
	has_many :opinions, dependent: :destroy
	belongs_to :session
	belongs_to :picture
	belongs_to :music

	after_create :define_words

	def define_words
		self.opinions.clear
		@data_to_shuffle = Word.all
		@shuffled_data = @data_to_shuffle.shuffle
		@shuffled_data.each do |word|
			self.opinions.create(word: word)
		end
	end

end
