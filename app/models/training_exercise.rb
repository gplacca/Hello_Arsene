class TrainingExercise < ApplicationRecord
  belongs_to :exercise
  belongs_to :training
  has_many :game_exercise_players

  def percentage
    (self.duration_in_minutes.to_f / self.training.duration_in_minutes.to_f) * 100
  end
end
