class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :age
  belongs_to :team
end
