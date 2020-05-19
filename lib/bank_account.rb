class BankAccount
  attr_reader :name, :balance, :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def display_balance
    puts "Your balance is $#{@balance}."
  end

end
