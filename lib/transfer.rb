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
    if amount <=sender.balance && status=="pending"
      self.receiver.balance += self.amount
      self.sender.balance -= self.amount
      self.status = "complete"
    else
      self.status = "Transaction rejected. Please check your account balance."
    end
  end
end
