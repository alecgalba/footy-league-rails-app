class League < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 50}

end
