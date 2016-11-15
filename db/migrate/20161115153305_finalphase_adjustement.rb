class FinalphaseAdjustement < ActiveRecord::Migration
  def change
  	add_reference :finalphases, :session, index: true
	add_reference :finalphases, :music, index: true
  end
end
