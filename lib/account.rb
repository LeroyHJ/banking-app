require 'date'

class Account
  def initialize
  date = DateTime.now
  @date = date.strftime("%d/%m/%Y")
  @balance = 0
  # @balance = 0
  @date_of_transaction = []
  end
  

  def deposit(credit)
    @balance += credit
    @date_of_transaction.push({date: @date, credit: credit, balance: balance, debit: ""})
    @balance
  end

  def withdraw(debit)
    if (@balance - debit) < 0 
      return "Declined"
    else
      @balance -= debit
      @date_of_transaction.push({date: @date, credit: "", balance: balance, debit: debit})
      @balance
    end
  end

  def balance
    return "#{@date}" + " " + "#{@balance}"
  end

  def statement
    puts "date || credit || debit || balance"
    @date_of_transaction.each do |date_of_transaction|
      puts "#{date_of_transaction[:date]} || #{date_of_transaction[:credit]} || #{date_of_transaction[:debit]} || #{date_of_transaction[:balance]}"
    end
    nil
  end
# binding.irb
end