module Plants
  module Resources
    # Kingdoms module
    # @see https://docs.trefle.io/reference#tag/Kingdoms
    module Kingdoms
      # GET /kingdoms
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_kingdoms(params: {})
        client.get('kingdoms', params: params)
      end

      # @param kingdom [String]
      # @return [::HTTP::Response]
      def find_kingdom(kingdom)
        client.get("kingdoms/#{kingdom}")
      end
    end
  end
end