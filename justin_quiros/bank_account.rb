class BankAccount
	@@no_of_accounts = 0
	private
		@interest

	public
	def initialize
		create_account()
		@@no_of_accounts += 1
		@check_bal = 0
		@save_bal = 0
		@interest = 0.01
	end

	def check_account_bal
		return @check_bal
		self
	end

	def save_account_bal
		return @save_bal
		self
	end

	def deposit(num, acct)
		if acct.end_with?("savings")
			@save_bal += num
			self
		elsif acct.end_with?("checkings")
			@check_bal += num
			self
		else
			puts "Please enter the correct account type."
			self
		end			
	end

	def withdrawl(num, acct)
		if acct.end_with?("savings")
			if @save_bal > num
				@save_bal -= num
				self
			else @save_bal < num
					puts "Sorry, this account has insufficient funds."
					self
			end
		end
		if acct.end_with?("checkings")
			if @check_bal > num
				@check_bal -= num
				self
			else @check_bal < num
					puts "Sorry, this account has insufficient funds."
					self
			end
		end	
		self
	end

	def account_total
		puts "Your total balance is #{@check_bal + @save_bal}"
		self
	end

	def self.no_of_accounts
		return @@no_of_accounts
		self
	end

	def account_information
		
		puts "Account num: #{@account_num}"
		puts "Total account balance: #{@check_bal + @save_bal}"
		puts "Checking account balance: #{@check_bal}"
		puts "Saving account balance: #{@save_bal}"
		puts "Your current interest rate:" + show_interest().to_s
		self
	end

	private
		def create_account
			@account_num = Random.rand(100000..700000)
		end
		def show_interest
			return @interest
		end
end

user1 = BankAccount.new.deposit(1000, "savings").withdrawl(20, "savings").deposit(1000, "checkings").withdrawl(100, "checkings").account_total
user1.account_information
p "This bank has " + BankAccount.no_of_accounts.to_s + " bank accounts."




