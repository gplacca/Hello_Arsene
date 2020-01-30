class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :post
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
