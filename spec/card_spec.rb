require 'card'

describe Card do
  it { is_expected.to respond_to(:charge) }
end
