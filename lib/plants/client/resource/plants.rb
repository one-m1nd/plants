module Plants
  class Client
    module Resource
      # Plants resource
      module Plants
        # GET /plants
        # @return [HTTP::Response]
        def plants
          get('plants')
        end
      end
    end
  end
end