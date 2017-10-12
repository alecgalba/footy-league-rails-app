class Team < ApplicationRecord
  has_and_belongs_to_many :leagues

  validates :name, presence: true
  validates :mascot, presence: true
  validates :colors, presence: true
  validates :user_id, presence: false
end
