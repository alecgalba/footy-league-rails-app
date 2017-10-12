class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :mascot
      t.string :colors

      t.timestamps
    end
  end
end
