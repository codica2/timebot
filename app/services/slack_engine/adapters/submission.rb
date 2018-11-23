# frozen_string_literal: true

module SlackEngine
  module Adapters
    class Submission < BaseAdapter
      def initialize(params)
        @params = JSON.parse(params[:payload])
        @command = @params['callback_id']
      end

      def call
        SlackEngine::Submissions.const_get(command.classify).new(params)
      end
    end
  end
end
