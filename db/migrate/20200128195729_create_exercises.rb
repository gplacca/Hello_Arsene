class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :category
      t.integer :default_duration_in_minutes
      t.text :description

      t.timestamps
    end
  end
end
