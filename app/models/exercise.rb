class Exercise < ApplicationRecord
  has_many :training_exercises
  validates :name, presence: true, uniqueness: true
end
