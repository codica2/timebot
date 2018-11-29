# frozen_string_literal: true

module SlackEngine
  class Processor
    def initialize(params, adapter:)
      @params = params
      @adapter = ::SlackEngine::Adapters.const_get(adapter.to_s.classify).call(params)
    end

    def self.perform(*args)
      new(*args).call
    end

    def call
      adapter.perform
    end

    private

    attr_reader :adapter, :params
  end
end
