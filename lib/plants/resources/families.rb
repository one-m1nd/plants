module Plants
  module Resources
    # Families module
    # @see https://docs.trefle.io/reference#tag/Families
    module Families
      # GET /families
      # @return [::HTTP::Response]
      def list_families
        client.get('families')
      end

      # @param family [String]
      # @return [::HTTP::Response]
      def find_family(family)
        client.get("families/#{family}")
      end
    end
  end
end