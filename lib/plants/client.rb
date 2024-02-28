# frozen_string_literal: true
require 'http'
require 'logger'

require 'plants/config'
require 'plants/version'

module Plants
  # HTTP Client
  #
  # @!attribute [r] config
  #   @return [Plants::Config]
  #
  class Client
    # @return [String] Trefle API URL
    URL = 'https://trefle.io/api/v1'

    # @param config [Plants::Config]
    def initialize(config = Config.new)
      @config = config
    end
    attr_reader :config


    # @param resource [String]
    # @param params [Hash]
    # @return [HTTP::Response]
    def get(resource, params: {})
      params.merge!({ token: config.token }) if config.token
      http.get("#{URL}/#{resource}", params: params)
    end

    private

    # @return [HTTP::Client]
    def http
      HTTP
        .timeout(5)
        .use(logging: { logger: Logger.new(STDOUT) })
        .headers({ 'User-Agent' => "Plants #{Plants::VERSION} ruby-#{RUBY_VERSION}" })
    end
  end
end