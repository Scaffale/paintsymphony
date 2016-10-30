class AdjustReferences < ActiveRecord::Migration
	def change
		add_reference :phases, :session, index: true
		add_reference :phases, :picture, index: true
		add_reference :phases, :music, index: true
	end
end
