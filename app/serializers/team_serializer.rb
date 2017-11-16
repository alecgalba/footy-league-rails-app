class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :mascot, :colors
  has_many :players
  has_many :fixtures
end
