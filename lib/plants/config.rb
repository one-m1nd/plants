module Plants
  # Configuration class
  #
  # @!attribute token
  #   @return [String]
  #
  class Config
    def initialize
      @token = nil
    end
    attr_accessor :token
  end
end