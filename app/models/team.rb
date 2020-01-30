class Team < ApplicationRecord
  belongs_to :user
  has_many :players
  has_many :trainings
  validates :name, presence: true, uniqueness: true
  validates :club_name, presence: true, uniqueness: true
end
