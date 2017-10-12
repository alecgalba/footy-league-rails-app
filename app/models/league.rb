class League < ApplicationRecord
  has_many :teams
  
  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 50}

end
