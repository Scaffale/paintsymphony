class Session < ActiveRecord::Base
	has_many :Phases, dependent: :destroy
	has_many :Opinions, through: :Phases

	def create_Phases
		debugger
		# Paint.each do
		# 	self.Phases.create
		# 	self.Phases.last. #add paint
		# self.Phases.create
	end
end
