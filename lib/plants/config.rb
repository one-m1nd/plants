module Plants
  # Configuration class
  #
  # @!attribute token
  #   @return [String]
  # @!attribute timeout
  #   @return [Integer]
  #
  class Config
    def initialize
      @token = nil
      @timeout = 10
    end
    attr_accessor :token, :timeout
  end
end