class Team < ApplicationRecord
  belongs_to :user
  has_many :players
  has_many :fixtures
  has_many :leagues, through: :fixtures
  has_and_belongs_to_many :leagues
  has_many :sponsors


  validates :name, presence: true
  validates :mascot, presence: true
  validates :colors, presence: true

  def sponsors_attributes=(sponsors_attributes)
    sponsors_attributes.values.each do |sponsors_attributes|
      self.sponsors.build(sponsors_attributes)
    end
  end

end
