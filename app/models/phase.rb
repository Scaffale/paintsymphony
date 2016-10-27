class Phase < ActiveRecord::Base
	has_many :Opinions, dependent: :destroy
	belongs_to :Session
	has_one :Picture
	has_one :Music
end
