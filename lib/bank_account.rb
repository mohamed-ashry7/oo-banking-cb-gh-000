class BankAccount

  attr_accessor :balance

  def initialize(name)
    @name = name
    @balance = 1000
  end
end
