require 'plants/resources/corrections'
require 'plants/resources/distributions'
require 'plants/resources/division_classes'
require 'plants/resources/division_orders'
require 'plants/resources/divisions'
require 'plants/resources/families'
require 'plants/resources/genus'
require 'plants/resources/kingdoms'
require 'plants/resources/plants'
require 'plants/resources/species'
require 'plants/resources/subkingdoms'

module Plants
  # Resources 'container' module
  module Resources
    include Corrections
    include Distributions
    include DivisionClasses
    include DivisionOrders
    include Divisions
    include Families
    include Genus
    include Kingdoms
    include Plants
    include Species
    include Subkingdoms
  end
end