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
    card.charge(calculate_cost(destination))
  end

  def stations
    STATIONS
  end

  def prices
    PRICES
  end

  def calculate_cost destination
    PRICES[destination_zone(destination)]
  end

  private

  def destination_zone destination
    return :zone_one if STATIONS[:zone_one].include?(destination)
    :zone_two
  end
end
