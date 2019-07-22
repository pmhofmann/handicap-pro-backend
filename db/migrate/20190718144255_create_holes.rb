class CreateHoles < ActiveRecord::Migration[5.2]
  def change
    create_table :holes do |t|
      t.integer :hole_number
      t.integer :yardage
      t.integer :par

      t.timestamps
    end
  end
end
