class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :teams
  has_many :comments
  has_many :leagues

end
