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

  def execute_transaction
    # if @sender.status == "open" && @receiver.status == closed
    if @sender.status != "closed" && @receiver.status != "closed"
      if @status == "pending"
        if @sender.balance < @amount
          "Transaction rejected. Please check your account balance."
        else
          @status = "complete"
          @sender.balance -= @amount
          @receiver.balance += @amount
        end
      end
    end
  end
end
