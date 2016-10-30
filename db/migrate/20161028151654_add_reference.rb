class AddReference < ActiveRecord::Migration
  def change
  	add_reference :opinions, :phase, index: true
	add_reference :opinions, :word, index: true
  end
end
