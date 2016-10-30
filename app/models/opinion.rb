class Opinion < ActiveRecord::Base
	belongs_to :Phase
	has_one :Word
end