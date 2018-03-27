class BankAccount
  attr_reader :name, :status
  attr_accessor :balance
  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def deposit(money)
    @balance += money
  end

  def valid?
    @status == 'open' && @balance > 0
  end

  def close_account
    @status = 'closed'
  end

  def display_balance
    "Your balance is $#{@balance}."
  end
end
