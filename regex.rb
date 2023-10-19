def check_mobile_number(number)
    /^[0-9]{10}$/ === number
end
  
def check_email(email)
    /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/ === email
end

def check_name(name)
    /^[a-zA-Z ]+$/ === name
end

def check_gender(gender)
    /^[MF]$/i === gender
end

def check_amount(amount)
    /^\d+$/ === amount
end
  

print "Enter mobile number: "
mobile_number = gets.chomp

print "Enter email address: "
email = gets.chomp

print "Enter name: "
name = gets.chomp

print "Enter gender (M/F): "
gender = gets.chomp.upcase

print "Enter amount: "
amount = gets.chomp

if check_mobile_number(mobile_number)
    puts "Mobile number is valid."
else
    puts "Invalid mobile number."
end

if check_email(email)
    puts "Email address is valid."
else
    puts "Invalid email address."
end

if check_name(name)
    puts "Name is valid."
else
    puts "Invalid name."
end

if check_gender(gender)
    puts "Gender is valid."
else
    puts "Invalid gender."
end

if check_amount(amount)
    puts "Amount is valid."
else
    puts "Invalid amount."
end
  