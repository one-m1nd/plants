module Plants
  module Resources
    # Plants resource
    # @see https://docs.trefle.io/reference#tag/Plants
    module Plants
      # GET /plants
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_plants(params: {})
        client.get('plants', params: params)
      end

      # GET /plants/{plant}
      # @param plant [String]
      # @return [::HTTP::Response]
      def find_plant(plant)
        client.get("plants/#{plant}")
      end

      # @param plant [String]
      # @param params [Hash]
      # @return [::HTTP::Response]
      def search_for_plant(plant, params: {})
        client.get('plants/search', params: params.merge({ q: plant }))
      end

      # @param genus [String]
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_plants_for_genus(genus, params: {})
        client.get("genus/#{genus}/plants", params: params)
      end

      # @param zone [String]
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_plants_for_distribution_zone(zone, params: {})
        client.get("distributions/#{zone}/plants", params: params)
      end
    end
  end
end