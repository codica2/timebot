# frozen_string_literal: true

class HolidaySerializer < ActiveModel::Serializer
  attributes :id, :name, :date
end
