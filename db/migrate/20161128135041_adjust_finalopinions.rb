class AdjustFinalopinions < ActiveRecord::Migration
  def change
  	add_reference :finalopinions, :finalphase, index: true
	add_reference :finalopinions, :music, index: true
  end
end
