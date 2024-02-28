require 'plants/resources/divisions'
require 'plants/resources/families'
require 'plants/resources/genus'
require 'plants/resources/kingdoms'
require 'plants/resources/plants'
require 'plants/resources/subkingdoms'

module Plants
  # Resources 'container' module
  module Resources
    include Divisions
    include Families
    include Genus
    include Kingdoms
    include Plants
    include Subkingdoms
  end
end