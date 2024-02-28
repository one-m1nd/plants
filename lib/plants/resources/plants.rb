module Plants
  module Resources
    # Plants resource
    module Plants
      # GET /plants
      # @return [HTTP::Response]
      def plants
        client.get('plants')
      end

      # GET /plants/{plant}
      # @param plant [String]
      # @return [HTTP::Response]
      def plant(plant)
        client.get("plants/#{plant}")
      end

      # @param plant [String]
      # @return [HTTP::Response]
      def search_for_plant(plant)
        client.get('plants/search', params: { q: plant })
      end

      # @param genus [String]
      # @return [HTTP::Response]
      def list_plants_for_genus(genus)
        client.get("genus/#{genus}/plants")
      end

      # @param zone [String]
      # @return [HTTP::Response]
      def list_plants_for_distribution_zone(zone)
        client.get("distributions/#{zone}/plants")
      end
    end
  end
end