# Plants
Gem to interact with the [trefle](https://docs.trefle.io/reference) API.

## Install
`spec.add_dependency 'plants', ~> 0`

## Usage
You need an authorization token, [see this](https://docs.trefle.io/docs/guides/getting-started).
```ruby
Plants.token = 'your token here'
Plants.list_plants # ... 
```

### Endpoints
All methods return an instance of [`HTTP::Response`](https://github.com/httprb/http/wiki/Response-Handling)

#### Corrections
```ruby
# List
Plants.list_corrections

# Find 
Plants.find_correction('correction')
```

#### Distributions
```ruby
# List
Plants.list_distributions

# Find 
Plants.find_distribution('correction')
```

#### Division Classes
```ruby
# List
Plants.list_division_classes

# Find 
Plants.find_division_class('class')
```

#### Division Orders
```ruby
# List
Plants.list_division_orders

# Find 
Plants.find_division_order('order')
```

#### Divisions
```ruby
# List
Plants.list_divisions

# Find 
Plants.find_division('division')
```

#### Families
```ruby
# List
Plants.list_families

# Find 
Plants.find_family('family')
```

#### Genus
```ruby
# List
Plants.list_genera

# Find 
Plants.find_genus('genus')
```

#### Kingdoms
```ruby
# List
Plants.list_kingdoms

# Find 
Plants.find_kingdom('kingodm')
```

#### Plants
```ruby
# List
Plants.list_plants

# Find 
Plants.find_plant('plant')

# Search
Plants.search_for_plant('plant')

# List for Genus
Plants.list_plants_for_genus('genus')

# List for Distribution Zone
Plants.list_plants_for_distribution_zone('zone')
```

#### Species
```ruby
# List
Plants.list_species

# Find 
Plants.find_species('species')

# Search
Plants.search_for_species('species')
```

#### Subkingdoms
```ruby
# List
Plants.list_subkingdoms

# Find 
Plants.find_subkingdom('subkingdom')
```