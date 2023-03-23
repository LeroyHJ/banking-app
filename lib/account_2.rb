require 'date'
require 'transaction'

class Accountt
  def initialize
  date = DateTime.now
  @date = date.strftime("%d/%m/%Y")
  @balance = 0
  @transaction = Transaction.new(self)
  # @balance = 0
  end

  def balance 
    @balance
  end

  def display_balance
    return "#{@date}" + " " + "#{@balance}"
  end

  def statement
    puts "date || credit || debit || balance"
    @transaction.transaction_history.each do |date_of_transaction|
      puts "#{date_of_transaction[:date]} || #{date_of_transaction[:credit]} || #{date_of_transaction[:debit]} || #{date_of_transaction[:balance]}"
    end
    nil
  end

  def transaction
    @transaction
  end

  def balance=(balance)
    @balance = balance
  end
# binding.irb
end