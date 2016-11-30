class Finalphase < ActiveRecord::Base
	belongs_to :session
	belongs_to :music
	has_one    :finalopinion, dependent: :destroy
	has_many   :pictures

	# after_create :create_Finalopinion

	# def create_Finalopinion
	# 	self.finalopinions.create(music: self.music)
	# end

end
