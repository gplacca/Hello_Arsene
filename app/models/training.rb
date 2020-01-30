class Training < ApplicationRecord
  belongs_to :team
  has_many :exercises, through: :training_exercises
  validates :starts_at, presence: true
  validates :duration_in_minutes, presence: true
end
