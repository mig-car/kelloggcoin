# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

#puts blockchain[1]["amount"]

# Empty array to append {person, balance}
balances = []
name_check = []

# Populate balances array with unique users with value pairs.
for txn in blockchain
  if name_check.include?(txn["from_user"]) || txn["from_user"] == nil
    ()
  else
    balances.append({"username" => txn["from_user"], "balance" => 0})
    name_check.append(txn["from_user"])
  end
end

# For each user in balances, check each transaction on blockchain to update their owned value. -= if from, += if to.
for user in balances
  for txn in blockchain
    if txn["from_user"] == user["username"]
      user["balance"] -= txn["amount"]
    end
    
    if txn["to_user"] == user["username"]
      user["balance"] += txn["amount"]
    end
  end
end

# Print balances per user.
for user in balances
  puts "#{user["username"]}'s Kelloggcoin balance is #{user["balance"]}."
end