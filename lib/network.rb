class Network

  STATIONS = {
                zone_one: ['Asterick', 'Antelope', 'Aldgate', 'Angel', 'Aardvark'],
                zone_two: ['Bison', 'Bugel', 'Balham', 'Bullhead', 'Barbican']
             }

  PRICES  = {
              zone_one: 2.50,
              zone_two: 3.00
            }

  def touch card, start, destination
    card.charge(calculate_cost(start, destination))
  end

  def stations
    STATIONS
  end

  def prices
    PRICES
  end

  def calculate_cost start, destination
    return PRICES[:zone_one] if station_zone(start) == :zone_one && station_zone(destination) == :zone_one
    PRICES[:zone_two]
  end

  private

  def station_zone station
    return :zone_one if STATIONS[:zone_one].include?(station)
    :zone_two
  end

end
