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
    if valid? then receiver.deposit << sender.amount
    end
  end
end
