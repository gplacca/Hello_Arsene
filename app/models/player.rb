class Player < ApplicationRecord
  POSTS = ["GK", "CB", "LB", "RB", "CM", "DM", "OM", "LM", "RM", "ST", "LW", "RW"]
  belongs_to :team
  has_many :game_exercise_players
  has_many :training_exercises, through: :game_exercise_players
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :post, presence: true, inclusion: { in: POSTS }
end
