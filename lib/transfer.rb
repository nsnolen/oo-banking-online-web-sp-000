class Transfer

  attr_accessor :status, :amount, :sender, :receiver

  def initialize(amount, sender, receiver, status = "pending")
    @amount = amount
    @sender = sender
    @receiver = receiver
    @status = status
  end
end
