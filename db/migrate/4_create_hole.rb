class CreateHole < ActiveRecord::Migration[5.2]
  def change
    create_table :holes do |t|
      t.references :course, foreign_key: true
      t.integer :hole_number
      t.integer :yardage
      t.integer :par
    end
  end
end
