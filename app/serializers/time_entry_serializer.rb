class TimeEntrySerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :details, :trello_labels, :estimated_time
  belongs_to :user
  belongs_to :project

  def estimated_time
    object.estimated_time
  end

end
