module Plants
  module Resources
    # Subkingdoms module
    # @see https://docs.trefle.io/reference#tag/Subkingdoms
    module Subkingdoms
      # GET /subkingdoms
      # @return [::HTTP::Response]
      def list_subkingdoms
        client.get('subkingdoms')
      end

      # @param kingdom [String]
      # @return [::HTTP::Response]
      def find_subkingdom(kingdom)
        client.get("subkingdoms/#{kingdom}")
      end
    end
  end
end