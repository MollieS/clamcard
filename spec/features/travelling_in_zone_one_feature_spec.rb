feature 'travelling in zone one' do
  scenario 'a single journey' do
    card = Card.new
    network = Network.new
    network.touch(card, 'Asterisk', 'Aldgate')
    expect(card.charge).to eq 2.50
  end
end
