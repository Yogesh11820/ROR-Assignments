def checkgrade(input)
    begin 
      grade = Integer(input)
  
      if grade <= 0 
          return "Enter a valid grade."
      elsif (1..5) === grade
          return "Elementary"
      elsif (6..8) === grade
          return "Middle School"
      elsif (9..12) === grade
          return "High School"
      else
          return "College"
      end
    rescue ArgumentError
      return "Invalid input. Please enter a valid number."
    end
  end
  
  puts "Enter the grade:"
  input = gets.chomp
  result = checkgrade(input)
  puts result
  