class Card
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def charge(amount)
    @balance += amount
    @balance = 7 if @balance > 7
  end
end
