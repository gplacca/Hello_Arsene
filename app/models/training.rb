class Training < ApplicationRecord
  belongs_to :team
  has_many :exercises, through: :training_exercises
  has_many :training_exercises, dependent: :destroy
  validates :start_at, presence: true
  validates :duration_in_minutes, presence: true

  def total_time
    self.training_exercises.pluck(:duration_in_minutes).reduce(:+)
  end

  def total_perc
    (total_time.to_f / self.duration_in_minutes * 100) || 0
  end

  def time_left
    self.duration_in_minutes - self.training_exercises.pluck(:duration_in_minutes).reduce(:+)
  end
end
