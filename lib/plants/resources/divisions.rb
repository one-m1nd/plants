module Plants
  module Resources
    # Divisions module
    # @see https://docs.trefle.io/reference#tag/Divisions
    module Divisions
      # GET /divisions
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_divisions(params: {})
        client.get('divisions', params: params)
      end

      # @param division [String]
      # @return [::HTTP::Response]
      def find_division(division)
        client.get("divisions/#{division}")
      end
    end
  end
end