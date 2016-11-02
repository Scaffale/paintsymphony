class Phase < ActiveRecord::Base
	has_many :opinions, dependent: :destroy
	belongs_to :session
	belongs_to :picture
	belongs_to :music

	after_create :define_words

	def define_words
		self.opinions.clear
		Word.all.each do |word|
			self.opinions.create(word: word)
		end
	end

end
