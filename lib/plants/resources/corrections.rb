module Plants
  module Resources
    # Corrections module
    # @see https://docs.trefle.io/reference#tag/Corrections
    module Corrections
      # GET /corrections
      # @param params [Hash]
      # @return [::HTTP::Response]
      def list_corrections(params: {})
        client.get('corrections', params: params)
      end

      # @param correction [String]
      # @return [::HTTP::Response]
      def find_correction(correction)
        client.get("corrections/#{correction}")
      end
    end
  end
end