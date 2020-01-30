class GameExercisePlayer < ApplicationRecord
  belongs_to :training_exercise
  belongs_to :player
end
