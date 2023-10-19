class Hangman
    def initialize

        @words = [
            "algorithm", "array", "binary", "bug", "class", "code", "compiler", "database", 
            "debugging", "encapsulation", "function", "git", "inheritance", "interface", 
            "java", "javascript", "lambda", "loop", "method", "object", "pointer", 
            "polymorphism", "recursion", "regex", "repository", "ruby", "script", "stack", 
            "syntax", "testing", "variable", "agile", "api", "framework", "html", "css", 
            "server", "django", "flask", "python", "exception", "module", "frontend", 
            "backend", "bootstrap", "json", "mysql", "node.js", "postgresql", "docker"
          ]
          
            
      @word = @words.sample
      @max_attempts = 7
      @attempts = 0
      @guessed_letters = []
      @display_word = "_ " * @word.length
    end
  
    def play
      while @attempts < @max_attempts && @display_word.include?("_")
        display_progress
        guess = get_guess
        check_guess(guess)
      end
  
      display_result
    end
  
    def display_progress
      puts "\nWord: #{@display_word}"
      puts "Guessed Letters: #{@guessed_letters.join(', ')}"
      puts "Attempts left: #{@max_attempts - @attempts}"
    end
  
    def get_guess
      print "\nEnter your guess: "
      guess = gets.chomp.downcase
  
      until guess.match?(/[a-z]/) && !@guessed_letters.include?(guess)
        print "Invalid guess. Enter a single letter you haven't guessed: "
        guess = gets.chomp.downcase
      end
  
      guess
    end
  
    def check_guess(guess)
      @guessed_letters << guess
      if @word.include?(guess)
        @word.each_char.with_index do |char, index|
          @display_word[index*2] = char if char == guess
        end
      else
        @attempts += 1
      end
    end
  
    def display_result
      if @display_word.include?("_")
        puts "\nSorry, you lost! The word was '#{@word}'."
      else
        puts "\nHurray! You did it! You guessed the correct word, and the word was #{@word}! Congratulations, you're the Hangman champion!"
      end
    end
  end
  
  hangman = Hangman.new
  hangman.play
  