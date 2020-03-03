class Account
  @@no_of_costumer = 0
  @@account = {}
  private
  @@acountid=1000
  attr_accessor :name,:dob,:balance
  attr_reader :accid

  
  def initialize(name,dob,balance)
      @name = name
      @dob = dob
      @balance = balance
      @accid = @@acountid+1
      @@acountid+=1
      
      add_account()
  end
  
  def add_account
    @@account.store("#{accid}",self)
    puts "Your account created succesfully"
    accobj = @@account["#{name}#{accid}"]
     @@account["#{accid}"].to_s
    @@no_of_costumer+=1
  end

  protected 
  #public
  def deposit(amount)
    @balance+=amount
    puts "************************************************"
    p "your account is been credited by :#{amount}\n current balance is : #{@balance}"
    puts "************************************************"

  end

  def get_customer_details
    puts "************************************************"
    p "Name : #{name}, Date of Birth : #{dob} , Balance : #{balance}\n"
    puts "*************************************************"

  end

  def Account.total_customer
    @@no_of_costumer
  end
  
  def Account.get_bank_account
    @@account
  end

  
end

class Current_Account < Account
  private
  Rate_of_interest = 0.08
  def initialize(name,dob,balance)
    super(name,dob,balance)
  end
  public
  def withdraw(amount)
    if((@balance - amount) >= 1)
    @balance-=amount
    puts "************************************************"
    p "Your account is been debited by #{amount}\n current balance is #{balance}"
    puts "************************************************"
    end
  end

  def deposit(amount)
    super(amount)
  end

  def to_s
    puts "#{accid} #{name} #{dob} #{balance}"
  end

  def getinterest(amount,month)
    puts amount*=Rate_of_interest*month
  end


end

class Saving_Account < Account
  private
  Rate_of_interest = 0.06
  def initialize(name,dob,balance)
    super(name,dob,balance)
  end
  public
  def withdraw(amount)
    if(@balance < 1000)
      puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
      p "Account balance is low cant withdraw"
      puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

    else
      @balance-=amount;
      puts "************************************************"
      p "Your account is been debited by : #{amount} \n current balance is : #{balance}"
      puts "************************************************"

    end
  end
  def deposit(amount)
    super(amount)
  end

  def to_s
    puts "#{accid} #{name} #{dob} #{balance}"
  end

  def getinterest(amount,month)
    puts amount*=Rate_of_interest*month
  end

end

begin
  puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
  p "Welcome to Bank Of Barosa"
  puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

end
choice = 0


Current_Account.new("manish","21/03/1997",43000)
Saving_Account.new("manoj","16/11/1996",39400)


while choice != -1
  puts "1 : open a account in bank "
  puts "2 : Withdraw money"
  puts "3 : Deposit money "
  puts "4 : Check Balance"
  puts "5 : get rate of interest"
  choice =gets.chomp.to_i
  case choice
    when 1
      p "select Account type\n"
      puts "1 : Saving          2 : Current"
      atype=0
      atype = gets.chomp.to_i
      p "Enter your name"
      name = gets.chomp
      puts "Enter your date of birth"
      dob = gets.chomp
      puts "Enter the Balance"
      bal = gets.chomp.to_i
      if atype == 1
       Saving_Account.new(name,dob,bal)
       else
        Current_Account.new(name,dob,bal)
      end
    when 2
      puts "enter your account id"
      aid = ""
      aid = gets.chomp
      puts "Enter the amount to withdraw"
      amt = 0
      amt = gets.chomp.to_i
      hash = Account.get_bank_account
      if (hash[aid].is_a? Saving_Account)
        hash[aid].withdraw(amt)
      else
        hash[aid].withdraw(amt)
      end
    when 3
      puts "enter your account id"
      aid = ""
      aid = gets.chomp
      puts "Enter the amount to deposit"
      amt = gets.chomp.to_i
      hash = Account.get_bank_account
      if (hash[aid].is_a? Saving_Account)
        hash[aid].deposit(amt)
      else
        hash[aid].deposit(amt)
      end
    when 4
      puts "enter the account id"
      aid = gets.chomp
      hash = Account.get_bank_account
      hash[aid].to_s
    when 5
      puts "enter your account id"
      aid = ""
      aid = gets.chomp
      puts "Enter the amount to deposit"
      amt = gets.chomp.to_i
      puts "Enter the no of months you want to invest"
      month = 0
      month =gets.chomp.to_i
      hash = Account.get_bank_account
      if (hash[aid].is_a? Saving_Account)
        hash[aid].getinterest(amt,month)
      else
        hash[aid].getinterest(amt,month)
      end
  end
end
