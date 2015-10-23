require 'network'
require 'card'

describe Network do
  
  let (:card) { instance_double Card }

  it { is_expected.to respond_to(:touch).with(3).arguments }
end
