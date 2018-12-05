# frozen_string_literal: true

module Api
  module V1
    module Slack
      class SlackController < ApplicationController
        skip_before_action :authenticate_user!

        def command
          SlackEngine::Processor.perform(params, adapter: :command)
        end

        def submission
          render SlackEngine::Processor.perform(params, adapter: :submission)
        end
      end
    end
  end
end
