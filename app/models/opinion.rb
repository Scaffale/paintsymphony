class Opinion < ActiveRecord::Base
	belongs_to :phase
	belongs_to :word
end