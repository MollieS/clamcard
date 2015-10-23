require 'card'

describe Card do
  it { is_expected.to respond_to(:charge).with(1).argument }

  it { is_expected.to respond_to(:balance) }

  it 'initializes with an empty balance' do
    expect(subject.balance).to be 0
  end
end
