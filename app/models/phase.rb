class Phase < ActiveRecord::Base
	has_many :opinions, dependent: :destroy
	belongs_to :session
	belongs_to :picture
	belongs_to :music
end
