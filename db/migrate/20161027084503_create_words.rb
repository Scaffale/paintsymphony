class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :left
      t.string :right

      t.timestamps null: false
    end
  end
end
