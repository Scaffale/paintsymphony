class Finalopinion < ActiveRecord::Base
	belongs_to :finalphase
	belongs_to :music
	# has_many   :pictures
	# belongs_to :pictures
	has_and_belongs_to_many :pictures # , :join_table => :finalopinions_pictures
end
