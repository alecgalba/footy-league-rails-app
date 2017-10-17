class Player < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :position, presence: true

  belongs_to :team

  scope :age, -> (age) { where age: age }
  scope :position, -> (position) { where position: position }
end
