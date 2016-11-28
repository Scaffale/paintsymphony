class CreateFinalopinions < ActiveRecord::Migration
  def change
    create_table :finalopinions do |t|

      t.timestamps null: false
    end
  end
end
