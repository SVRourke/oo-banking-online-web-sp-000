class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  # your code here

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def self.execute_transaction
    if @sender.balance < @amount
      false
    else
      @sender.balance -= @amount
      @receiver.balance += @amount
    end
end
