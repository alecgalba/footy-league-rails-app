class Player < ApplicationRecord
  belongs_to :team

  validates :name, presence: true
  validates :age, presence: true
  validates :position, presence: true

  scope :age, -> (age) { where age: age }
  scope :position, -> (position) { where position: position }

end
