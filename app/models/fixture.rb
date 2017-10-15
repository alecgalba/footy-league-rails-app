class Fixture < ApplicationRecord
  # belongs_to :team
  # belongs_to :league

  validates :team_1, presence: true
  validates :team_2, presence: true
  validates :date, presence: true
  validates :time, presence: true

  def self.team_id=(team_id)
    @team_id = team_1.id
  end

  def self.league_id=(league_id)
    @league_id = league_id
  end
end
