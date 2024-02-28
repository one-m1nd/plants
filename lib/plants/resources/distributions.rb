module Plants
  module Resources
    # Distributions module
    # @see https://docs.trefle.io/reference#tag/Distributions
    module Distributions
      # GET /distributions
      # @return [::HTTP::Response]
      def list_distributions
        client.get('distributions')
      end

      # @param distributions [String]
      # @return [::HTTP::Response]
      def find_distributions(distributions)
        client.get("distributions/#{distributions}")
      end
    end
  end
end