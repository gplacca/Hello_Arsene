class CreateTrainingExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :training_exercises do |t|
      t.datetime :starts_at
      t.integer :duration_in_minutes
      t.references :training, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
