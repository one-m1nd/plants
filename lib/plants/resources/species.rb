module Plants
  module Resources
    # Species module
    # @see https://docs.trefle.io/reference#tag/Species
    module Species
      # GET /species
      # @return [::HTTP::Response]
      def list_species
        client.get('species')
      end

      # @param species [String]
      # @return [::HTTP::Response]
      def find_species(species)
        client.get("species/#{species}")
      end

      # @param species [String]
      # @return [::HTTP::Response]s
      def search_for_species(species)
        client.get("species/search", params: { q: species })
      end
    end
  end
end
