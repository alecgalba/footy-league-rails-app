class CreateLeaguesTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues_teams do |t|
      t.integer :league_id
      t.integer :team_id
    end
  end
end
