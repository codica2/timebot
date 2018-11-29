# frozen_string_literal: true

class TimeEntrySerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :details, :trello_labels, :estimated_time
  belongs_to :user
  belongs_to :project
end
