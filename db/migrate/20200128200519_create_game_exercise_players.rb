class CreateGameExercisePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_exercise_players do |t|
      t.string :game_team
      t.references :player, foreign_key: true
      t.references :training_exercise, foreign_key: true

      t.timestamps
    end
  end
end
