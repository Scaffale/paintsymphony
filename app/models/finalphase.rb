class Finalphase < ActiveRecord::Base
	belongs_to :session
	has_many :pictures
	has_many :musics
end
