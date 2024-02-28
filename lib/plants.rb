# frozen_string_literal: true

require "plants/client"
require "plants/config"
require "plants/version"

module Plants
  class << self

    # @param new_value [String]
    # @return [void]
    def token=(new_value)
      client.config.token = new_value
    end

    # @return [Plants::Config]
    def config
      client.config
    end

    # GET /plants
    # @return [HTTP::Response]
    def plants
      client.plants
    end

    private

    # @return [Plants::Client]
    def client
      @_client ||= Client.new
    end
  end
end
