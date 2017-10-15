class CreateJoinTableLeaguesTeams < ActiveRecord::Migration[5.1]
  def change
    create_join_table :leagues, :teams do |t|
      t.integer :league_id
      t.integer :team_id
    end
  end
end
