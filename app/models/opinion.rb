class Opinion < ActiveRecord::Base
	belongs_to :phase
	has_one :word
end