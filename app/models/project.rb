# frozen_string_literal: true

class Project < ApplicationRecord
  MINIMUM_PROJECT_NAME_LENGTH = 4

  include Paginationable
  include Filterable

  has_many :time_entries, dependent: :nullify
  belongs_to :team

  validates :name, :alias, uniqueness: { case_sensitive: false }

  before_validation :generate_alias

  scope :by_name, ->(term) { where('lower(name) LIKE ?', "#{term.downcase}%") }
  scope :by_alias, ->(term) { where('lower(alias) LIKE ?', "#{term.downcase}%") }
  scope :by_entries_number, -> { left_outer_joins(:time_entries).group(:id).order("COUNT(time_entries.id) DESC") }

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
