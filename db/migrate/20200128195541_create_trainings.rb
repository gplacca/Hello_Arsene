class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.datetime :start_at
      t.integer :duration_in_minutes
      t.references :team, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
