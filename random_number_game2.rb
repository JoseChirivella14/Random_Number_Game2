class GuessingGame
  def initialize
    @num_guesses = 0
    @max_guesses = 5
    @number = rand(1..100)
    @won = false
  end

  def play_round
    @num_guesses += 1
    print "Guess a number between 1 and 100: "
    guess = gets.chomp.to_i
    if guess < @number
      puts "too low"
    elsif guess > @number
      puts "too high"
    else
      @won = true
    end
  end

  def play
    # greet_player
    while @num_guesses < @max_guesses && !@won
      play_round
    end
    if @won
      puts "Congratulations! You guessed it."
    else
      puts "Better luck next time"
    end
  end
end

def run
  play_again = true
  while play_again
    game = GuessingGame.new
    game.play
    puts "Would you like to play again? "
    play_again = gets.chomp.downcase == "yes"
  end
end
