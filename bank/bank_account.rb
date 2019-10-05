class BankAccount
    @@accounts =0
    attr_accessor :checkings, :savings
    def initialize
        @@accounts += 1
        @interest_rate = 0.01
        @get_account_num
        @checkings = 0
        @savings = 0
    end
    def get_checkings
        @checkings
    end
    def get_savings
        @savings
    end
    def deposit_checkings money
        @checkings += money
        self
    end
    def deposit_savings money
        @savings += money
        self
    end
    def show_total
        @checkings + @savings
        self
    end
    def show_accounts
        @@accounts
    end
    def account_info
        puts get_account_num
        puts "total money is #{@checkings+@savings}, checking is #{@checkings}, savings is #{@savings}, interest rate is #{@interest_rate}"
    end
    def withdraw_checkings money
        unless @checkings < money
            @checkings -= money 
        end
        if @checkings < money
            puts "not enough money"
        end
        self
    end
    def withdraw_savings money
        unless @savings < money
            @savings -= money
        end
        if @savings < money
            puts "not enough money"
        end
        self
    end
    private
    def get_account_num
        @id = 1+rand(100000000)
    end

end
# BankAccount.new.deposit_checkings(100).deposit_savings(300).withdraw_checkings(5000).account_info

  