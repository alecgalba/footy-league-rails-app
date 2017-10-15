class CreateFixtures < ActiveRecord::Migration[5.1]
  def change
    create_table :fixtures do |t|
      t.string :team_1
      t.string :team_2
      t.date :date
      t.time :time
      t.belongs_to :team
      t.belongs_to :league
      t.timestamps null: false
    end
  end
end
