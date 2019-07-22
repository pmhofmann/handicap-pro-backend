class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.float :handicap
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
