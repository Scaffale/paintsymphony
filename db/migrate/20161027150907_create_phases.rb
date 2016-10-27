class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|

      t.timestamps null: false
    end
  end
end
