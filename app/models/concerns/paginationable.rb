# frozen_string_literal: true

module Paginationable
  extend ActiveSupport::Concern
  included do
    scope :paginate, ->(params) { order(id: :desc).page(params[:page]).per(params[:per_page] || PER_PAGE) }
  end
end
