# frozen_string_literal: true

module SlackEngine
  module Adapters
    class BaseAdapter
      def self.call(*args)
        new(*args).call
      end

      private

      attr_reader :command, :params
    end
  end
end
