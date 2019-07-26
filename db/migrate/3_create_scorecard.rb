class CreateScorecard < ActiveRecord::Migration[5.2]
  def change
    create_table :scorecards do |t|
      t.references :player, foreign_key: true
      t.references :course, foreign_key: true
      t.integer :score
      t.date :date_played
    end
  end
end
