require 'plants/resources/families'
require 'plants/resources/genus'
require 'plants/resources/plants'

module Plants
  # Resources 'container' module
  module Resources
    include Families
    include Genus
    include Plants
  end
end