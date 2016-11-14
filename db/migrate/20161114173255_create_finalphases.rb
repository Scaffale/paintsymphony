class CreateFinalphases < ActiveRecord::Migration
  def change
    create_table :finalphases do |t|

      t.timestamps null: false
    end
  end
end
