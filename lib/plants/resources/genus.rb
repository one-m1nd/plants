module Plants
  module Resources
    # Genera module
    # @see https://docs.trefle.io/reference#tag/Genus
    module Genus
      # GET /genus
      # @return [::HTTP::Response]
      def list_genera
        client.get('genus')
      end

      # @param genus [String]
      # @return [::HTTP::Response]
      def find_genus(genus)
        client.get("genus/#{genus}")
      end
    end
  end
end