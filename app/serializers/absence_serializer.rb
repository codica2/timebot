class AbsenceSerializer < ActiveModel::Serializer
  attributes :id, :date, :comment, :reason
  has_one :user
end
