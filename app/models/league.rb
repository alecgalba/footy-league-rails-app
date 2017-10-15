class League < ApplicationRecord
  has_many :fixtures
  has_many :teams, through: :fixtures
  has_and_belongs_to_many :teams
  # accepts_nested_attributes_for :fixtures

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 50}

end
