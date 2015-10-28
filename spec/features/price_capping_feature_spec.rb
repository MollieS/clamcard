feature 'cap on prices' do
  scenario 'within one day' do
    card = Card.new
    network = Network.new
    network.touch(card, 'Asterick', 'Barbican')
    network.touch(card, 'Barbican', 'Balham')
    expect(card.balance).to eq 6.00
    network.touch(card, 'Balham', 'Bison')
    expect(card.balance).to eq 7.00
  end
end
