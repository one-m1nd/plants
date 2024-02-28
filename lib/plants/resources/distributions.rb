module Plants
  module Resources
    # Distributions module
    # @see https://docs.trefle.io/reference#tag/Distributions
    module Distributions
      # GET /distributions
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_distributions(params: {})
        client.get('distributions', params)
      end

      # @param distribution [String]
      # @return [::HTTP::Response]
      def find_distribution(distribution)
        client.get("distributions/#{distribution}")
      end
    end
  end
end