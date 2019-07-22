class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :county
      t.integer :yardage
      t.integer :par
      t.string :postcode

      t.timestamps
    end
  end
end
