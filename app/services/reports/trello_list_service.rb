# frozen_string_literal: true

module Reports
  class TrelloListService < BaseService
    ONE_CALL_LIMIT = 100

    attr_reader :ids

    def initialize(ids)
      @ids = ids
    end

    def call
      result = {}
      ids.uniq.each_slice(ONE_CALL_LIMIT) do |batch|
        url = URI.parse("#{api_url}&urls=#{ticket_urls_for(batch)}")
        res = Net::HTTP.get(url)
        res = JSON.parse(res)
        res = res.map { |r| r['200'] }
        res = batch.zip(res).to_h
        result.merge!(res)
      end
      result
    end

    private

    def api_url
      c = ::Trello.configuration
      "https://api.trello.com/1/batch/?key=#{c.developer_public_key}&token=#{c.member_token}"
    end

    def ticket_urls_for(keys)
      keys.map { |key| "/cards/#{key}/list?fields=name" }.join(',')
    end
  end
end
