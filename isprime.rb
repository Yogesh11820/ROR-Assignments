def isprime(input)
    begin
      number = Integer(input)
  
      if number <= 1
        return "0, 1, and negative numbers cannot be prime."
      else
        i = 2
        while i <= Math.sqrt(number) do 
          if number % i == 0 
            return "The #{number} is not a prime number."
          end
          i += 1
        end
        return "The #{number} is a prime number."
      end
    rescue ArgumentError
      return "Invalid input. Please enter a valid number."
    end
  end
  
  puts "Enter the number:"
  input = gets.chomp
  result = isprime(input)
  puts result
  