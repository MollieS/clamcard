feature 'travelling in zone one' do
  scenario 'a single journey' do
    card = Card.new
    network = Network.new
    network.touch(card, 'Asterisk', 'Aldgate')
    expect(card.balance).to eq 2.50
  end

  scenario 'two journeys' do
    card = Card.new
    network = Network.new
    network.touch(card, 'Asterisk', 'Aldgate')
    network.touch(card, 'Aldgate', 'Antelope')
    expect(card.balance).to eq 5.00
  end
end
