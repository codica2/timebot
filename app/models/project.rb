# frozen_string_literal: true
class Project < ApplicationRecord
  MINIMUM_PROJECT_NAME_LENGTH = 4

  def to_s
    string = "#{id}. *#{name}*"
    string += "; Alias: *#{self.alias}*" if self.alias.present?
    string
  end
end
