class Finalopinions < ActiveRecord::Migration
  def change
	create_table :finalopinions_pictures, id: false do |t|
		t.belongs_to :finalopinion, index: true
		t.belongs_to :picture, index: true
	end
  end
end
