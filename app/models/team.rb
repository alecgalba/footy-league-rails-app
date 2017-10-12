class Team < ApplicationRecord
  validates :name, presence: true
  validates :mascot, presence: true
  validates :colors, presence: true
end
