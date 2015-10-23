require 'network'
require 'card'

describe Network do
  
  let (:card) { instance_double Card }

  it { is_expected.to respond_to(:touch).with(3).arguments }

  context 'calculating the cost of a journey' do
    it 'should have a list of stations' do
      expect(subject.stations).to eq ({ zone_one: ['Asterick', 'Antelope', 'Aldgate', 'Angel', 'Aardvark'],
                                        zone_two: ['Bison', 'Bugel', 'Balham', 'Bullhead', 'Barbican'] })
    end

    it 'should know the prices' do
      expect(subject.prices).to eq ({ zone_one: 2.50,
                                      zone_two: 3.00 })
    end

    it 'calculates the correct price for a zone_one journey' do
      expect(subject.calculate_cost('Antelope')).to eq(subject.prices[:zone_one])
    end

    it 'calculates the correct price for a zone_two journey' do
      expect(subject.calculate_cost('Bugel')).to eq(subject.prices[:zone_two])
    end
  end
end
