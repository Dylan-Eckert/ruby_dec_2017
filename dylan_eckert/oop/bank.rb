class BankAccount
  attr_accessor :acctnum, :checkbal, :savebal
  @@accounts = 0
  def initialize
    @acctnum = genAcct
    @checkbal = 0
    @savebal = 0
    @@accounts += 1
    @interest = 0.01
  end
  def showCheck
    puts "Checking: #{@checkbal}"
    self
  end
  def showSave
    puts "Savings: #{@savebal}"
    self
  end
  def deposit(acct, num)
    if acct == "checking"
      @checkbal += num
    elsif acct == "saving"
      @savebal += num
    else
      p "No matching account name"
    end
    self
  end
  def withdraw(acct, num)
    if acct == "checking"
      @checkbal -= num
    elsif acct == "saving"
      @savebal -= num
    else
      p "No matching account name"
    end
    self
  end
  def showTotal
    total = @checkbal + @savebal
  end
  def showAcct
    puts "Account Number: #{@acctnum} Interest: #{@interest} #{self.showTotal}"
    self
  end
  def self.accounts
    p "Total Accounts: #{@@accounts}"
  end
  private
    def genAcct
      @acctnum = rand(1..10)
    end
end

dylan = BankAccount.new
dylan.showAcct.showSave.showCheck
dylan.deposit("checking", 20)
dylan.deposit("saving", 50)
dylan.deposit("kbdlkaf", 20)
dylan.showAcct.showSave.showCheck
dylan.withdraw("checking", 10)
dylan.withdraw("saving", 20)
dylan.withdraw("kbdlkaf", 20)
dylan.showAcct.showSave.showCheck

BankAccount.accounts
