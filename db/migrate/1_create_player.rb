class CreatePlayer < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.float :hcp
    end
  end
end
