# frozen_string_literal: true
class Project < ApplicationRecord
  MINIMUM_PROJECT_NAME_LENGTH = 4

  has_many :time_entries

  validates :name, :alias, uniqueness: { case_sensitive: false }

  before_validation :generate_alias

  def to_s
    string = "#{id}. *#{name}*"
    string += "; Alias: *#{self.alias}*" if self.alias.present?
    string
  end

  private

  def generate_alias
    return if self.alias.present?

    self.alias = name.downcase.tr(' ', '-')
  end

end
