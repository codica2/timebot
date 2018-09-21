class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :alias
  belongs_to :team

end
