# frozen_string_literal: true

require "plants/client"
require "plants/config"
require "plants/resources"
require "plants/version"

# Plants :)
module Plants
  extend Plants::Resources

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

    private

    # @return [Plants::Client]
    def client
      @_client ||= Client.new
    end
  end
end
