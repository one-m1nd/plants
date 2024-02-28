module Plants
  module Resources
    # Divisions module
    # @see https://docs.trefle.io/reference#tag/Divisions
    module Divisions
      # GET /divisions
      # @return [::HTTP::Response]
      def list_divisions
        client.get('divisions')
      end

      # @param division [String]
      # @return [::HTTP::Response]
      def find_division(division)
        client.get("divisions/#{division}")
      end
    end
  end
end