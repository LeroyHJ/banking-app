require 'account_2'

RSpec.describe Accountt do 
  context "Class" do
    it "adds money to the account" do 
      account = Accountt.new 
      expect(account.transaction.deposit(500)).to eq 500
    end

    it "subtracts money from the account" do 
      account = Accountt.new
      account.transaction.deposit(500)
      expect(account.transaction.withdraw(50)).to eq 450
    end

    it "shows current date and balance" do
      account = Accountt.new
      date = DateTime.now
      today = date.strftime("%d/%m/%Y")
      account.transaction.deposit(1500)
      account.transaction.withdraw(500)
      expect(account.display_balance).to eq "#{today} 1000"
    end
  end
end