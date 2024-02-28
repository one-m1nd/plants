module Plants
  module Resources
    # Division orders module
    # @see https://docs.trefle.io/reference#tag/DivisionOrders
    module DivisionOrders
      # GET /division_orders
      # @return [::HTTP::Response]
      def list_division_orders
        client.get('division_orders')
      end

      # @param division_order [String]
      # @return [::HTTP::Response]
      def find_division_order(division_order)
        client.get("division_orders/#{division_order}")
      end
    end
  end
end