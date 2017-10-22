class Fixture < ApplicationRecord
  belongs_to :team
  belongs_to :league

  validates :opponent, presence: true
  validates :date, presence: true
  validates :time, presence: true

  def self.old_games
    where("date <?", Time.zone.today)
  end

  def self.upcoming_matches
    where("date >?", Time.zone.today)
  end

end
