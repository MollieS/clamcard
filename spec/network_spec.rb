require 'network'
require 'card'

describe Network do
  let (:card) { instance_double Card }
  let (:network) { Network.new }

  it { is_expected.to respond_to(:touch).with(3).arguments }

  context 'calculating the cost of a journey' do
    it 'should have a list of stations in zone_one' do
      expect(network.stations[:zone_one]).to eq %w(Asterick Antelope Aldgate Angel Aardvark)
    end

    it 'should have a list of stations in zone_two' do
      expect(network.stations[:zone_two]).to eq %w(Bison Bugel Balham Bullhead Barbican)
    end

    it 'should know the price for a journey to zone_one' do
      expect(network.prices[:zone_one]).to eq 2.50
    end

    it 'should know the price for a journey to zone_two' do
      expect(network.prices[:zone_two]).to eq 3.00
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
