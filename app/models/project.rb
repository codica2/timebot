class Project < ApplicationRecord

  MINIMUM_PROJECT_NAME_LENGTH = 4

  def to_s
    string = "`#{self.id}`. *#{self.name}*"
    string += ";\nAlias: *#{self.alias}*" if self.alias.present?
    string
  end
end
