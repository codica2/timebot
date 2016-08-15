class Project < ApplicationRecord

  MINIMUM_PROJECT_NAME_LENGTH = 4

  def to_s
    string = "#{self.id}. *#{self.name}*"
    string += "; Alias: *#{self.alias}*" if self.alias.present?
    string
  end
end
