class League < ApplicationRecord
  has_many :fixtures
  has_many :teams, through: :fixtures
  has_and_belongs_to_many :teams

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 50}

end
