class Training < ApplicationRecord
  belongs_to :team
  has_many :exercises, through: :training_exercises
  has_many :training_exercises, dependent: :destroy
  validates :start_at, presence: true
  validates :duration_in_minutes, presence: true
end
