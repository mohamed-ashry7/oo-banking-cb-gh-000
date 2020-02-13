class Transfer
  attr_accessor :status
  attr_reader :sender , :receiver , :amount
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.is_a?(BankAccount) && receiver.is_a?(BankAccount) 
  end
end
