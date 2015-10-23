feature 'travelling between zones' do
  scenario 'from zone one to zone two' do
    card = Card.new
    network = Network.new
    network.touch(card, 'Asterick', 'Barbican')
    expect(card.balance).to eq 3.00
  end

  scenario 'two journeys' do
    card = Card.new
    network = Network.new
    network.touch(card, 'Asterick', 'Barbican')
    network.touch(card, 'Barbican', 'Balham')
    expect(card.balance).to eq 6.00
  end
end
