# frozen_string_literal: true

class AbsenceSerializer < ActiveModel::Serializer
  attributes :id, :date, :comment, :reason
  belongs_to :user
end
