class TrainingExercise < ApplicationRecord
  belongs_to :exercise
  belongs_to :training
  has_many :game_exercise_players
end
