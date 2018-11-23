# frozen_string_literal: true

module SlackEngine
  module Adapters
    class Command < BaseAdapter
      def initialize(params)
        @params = params
        @command = params[:command]
      end

      def call
        SlackEngine::Commands.const_get(command.parameterize.classify).new(params)
      end
    end
  end
end
