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
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if amount >=sender.balance
      receiver.balance += self.amount
      sender.balance -= self.amount
      status = "successful"
    else
      status = "failed"
    end
  end
end
