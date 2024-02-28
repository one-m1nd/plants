module Plants
  module Resources
    # Division classes module
    # @see https://docs.trefle.io/reference#tag/DivisionClasses
    module DivisionClasses
      # GET /division_classes
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_division_classes(params)
        client.get('division_classes', params: params)
      end

      # @param division_class [String]
      # @return [::HTTP::Response]
      def find_division_class(division_class)
        client.get("division_classes/#{division_class}")
      end
    end
  end
end