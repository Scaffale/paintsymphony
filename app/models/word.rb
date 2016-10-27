class Word < ActiveRecord::Base
	validates :left,  presence: true
	validates :right,  presence: true
end
