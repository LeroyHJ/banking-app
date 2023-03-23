require 'account_2'

class Transaction 
  # attr_reader :transaction_history
  def initialize(account)
    @account = account
    @transaction_history = []
  end

  def transaction_history
    @transaction_history
  end

  def deposit(credit)
    @account.balance += credit
    @transaction_history.push({date: @date, credit: credit, balance: @account.balance, debit: ""})
    @account.balance
  end

  def withdraw(debit)
    if (@account.balance - debit) < 0 
      return "Declined"
    else
      @account.balance -= debit
      @transaction_history.push({date: @date, credit: "", balance: @account.balance, debit: debit})
      @account.balance
    end
  end
end