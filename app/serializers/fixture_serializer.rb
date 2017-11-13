class FixtureSerializer < ActiveModel::Serializer
  attributes :id, :team_id, :opponent, :date, :time
  belongs_to :team
end
