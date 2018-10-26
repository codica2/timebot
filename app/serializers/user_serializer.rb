# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :uid, :created_at, :is_active, :role
  belongs_to :team

  def created_at
    {
      date: object.created_at.strftime("%d %b, %Y"),
      time: object.created_at.strftime("%H:%M")
    }
  end

end
