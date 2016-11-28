class AdjustFinalopinions < ActiveRecord::Migration
  def change
  	add_reference :finalopinion, :finalphase, index: true
	add_reference :finalopinions, :music, index: true
	add_reference :paints, :finalopinion, index: true
  end
end
