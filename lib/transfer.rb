class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize (sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? && sender.balance > amount && self.status == "pending"
      sender.withdrawl(self.amount)
      receiver.deposit(self.amount)
      status = "complete"
    else
      status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end
