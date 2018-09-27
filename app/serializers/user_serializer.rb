class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :uid, :created_at, :is_active, :role
  belongs_to :team
end
