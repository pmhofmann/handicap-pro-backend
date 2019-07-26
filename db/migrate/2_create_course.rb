class CreateCourse < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :county
      t.string :url
      # t.integer :hole1_id
      # t.integer :hole2_id
      # t.integer :hole3_id
      # t.integer :hole4_id
      # t.integer :hole5_id
      # t.integer :hole6_id
      # t.integer :hole7_id
      # t.integer :hole8_id
      # t.integer :hole9_id
      # t.integer :hole10_id
      # t.integer :hole11_id
      # t.integer :hole12_id
      # t.integer :hole13_id
      # t.integer :hole14_id
      # t.integer :hole15_id
      # t.integer :hole16_id
      # t.integer :hole17_id
      # t.integer :hole18_id
    end
  end
end
