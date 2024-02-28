module Plants
  module Resources
    # Subkingdoms module
    # @see https://docs.trefle.io/reference#tag/Subkingdoms
    module Subkingdoms
      # GET /subkingdoms
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_subkingdoms(params: {})
        client.get('subkingdoms', params: params)
      end

      # @param kingdom [String]
      # @return [::HTTP::Response]
      def find_subkingdom(kingdom)
        client.get("subkingdoms/#{kingdom}")
      end
    end
  end
end