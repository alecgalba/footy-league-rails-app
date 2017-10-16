class CreateFixtures < ActiveRecord::Migration[5.1]
  def change
    create_table :fixtures do |t|
      t.string :opponent
      t.date :date
      t.time :time
      t.belongs_to :team, index: true, foreign_key: true
      t.belongs_to :league, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
