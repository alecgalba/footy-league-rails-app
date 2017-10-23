class AddTeamToSponsor < ActiveRecord::Migration[5.1]
  def change
    add_reference :sponsors, :team, index: true, foreign_key: true
  end
end
