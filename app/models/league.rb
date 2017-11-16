class League < ApplicationRecord
  has_many :fixtures
  has_many :teams, through: :fixtures
  has_and_belongs_to_many :teams
  has_many :comments
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 500}

end
