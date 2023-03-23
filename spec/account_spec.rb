require 'account'

RSpec.describe Account do 
  context "Class" do
    it "adds money to the account" do 
      account = Account.new 
      expect(account.deposit(500)).to eq 500
    end

    it "subtracts money from the account" do 
      account = Account.new
      account.deposit(500)
      expect(account.withdraw(50)).to eq 450
    end

    it "shows current date and balance" do
      account = Account.new
      date = DateTime.now
      today = date.strftime("%d/%m/%Y")
      account.deposit(1500)
      account.withdraw(500)
      expect(account.balance).to eq "#{today} 1000"
    end
  end
end