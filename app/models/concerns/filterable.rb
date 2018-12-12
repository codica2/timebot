# frozen_string_literal: true

module Filterable
  extend ActiveSupport::Concern
  class_methods do
    def filter(filtering_params)
      results = where(nil)
      filtering_params.each do |key, value|
        value.reject!(&:blank?) if value.is_a? Array
        results = results.public_send(key, value) if value.present?
      end
      results
    end

    def search(filtering_params)
      { data: select(:id, :name).filter(filtering_params).order(name: :asc) }
    end
  end
end
