class Team < ApplicationRecord
  belongs_to :user
  has_many :players
  has_many :fixtures
  has_many :leagues, through: :fixtures
  has_and_belongs_to_many :leagues
  # accepts_nested_attributes_for :fixtures


  validates :name, presence: true
  validates :mascot, presence: true
  validates :colors, presence: true


end
