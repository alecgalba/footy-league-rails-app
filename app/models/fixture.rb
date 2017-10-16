class Fixture < ApplicationRecord
  belongs_to :team
  belongs_to :league

  # validates :team_1, presence: true
  validates :opponent, presence: true
  validates :date, presence: true
  validates :time, presence: true

  scope :time, -> (time) { where time: time }
  scope :date, -> (date) { where date: date }

  def teamname
    team_id.name
  end

end
