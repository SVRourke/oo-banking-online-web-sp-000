class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  # your code here
  @processed = Array.new

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @sender.valid? && @receiver.valid? && @sender.balance > @amount && @status == "pending"
      @status = "complete"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @processed << self
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer(transfer)
end
