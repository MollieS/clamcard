require 'card'

describe Card do
  let (:card) { Card.new }

  it { is_expected.to respond_to(:charge).with(1).argument }

  it { is_expected.to respond_to(:balance) }

  it 'initializes with an empty balance' do
    expect(card.balance).to be 0
  end

  it 'caps balance at £7.00' do
    card.charge(4)
    card.charge(4)
    expect(card.balance).to be 7
  end
end
