require 'network'
require 'card'

describe Network do
  let (:card) { instance_double Card }
  let (:network) { Network.new }

  it { is_expected.to respond_to(:touch).with(3).arguments }

  context 'calculating the cost of a journey' do
    it 'should have a list of stations' do
      expect(network.stations).to eq ({ zone_one: %w(Asterick Antelope Aldgate Angel Aardvark),
                                        zone_two: %w(Bison Bugel Balham Bullhead Barbican) })
    end

    it 'should know the prices' do
      expect(network.prices).to eq ({ zone_one: 2.50,
                                      zone_two: 3.00 })
    end

    it 'calculates the correct price for a zone_one journey' do
      expect(network.calculate_cost('Angel', 'Antelope')).to eq(network.prices[:zone_one])
    end

    it 'calculates the correct price for a zone_two journey' do
      expect(network.calculate_cost('Barbican', 'Bugel')).to eq(network.prices[:zone_two])
    end

    it 'calculates the correct price when travelling from zone_two to zone_one' do
      expect(network.calculate_cost('Barbican', 'Angel')).to eq(network.prices[:zone_two])
    end
  end
end
