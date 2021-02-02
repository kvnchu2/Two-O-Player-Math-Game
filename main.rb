require_relative 'player'
require_relative 'player_turn'


def start
  player_1 = Player.new(1)
  player_2 = Player.new(2)
  player_turn = PlayerTurn.new(1)
  while player_1.score != 0 && player_2.score != 0
    number1 = rand(1..20)
    number2 = rand(1..20)
    real_answer = number1 + number2
    puts "Player #{player_turn.turn}: what does #{number1} + #{number2} equal?"
    print ">"
    answer = $stdin.gets.chomp

    if player_turn.turn == 1 && answer.to_i == real_answer && player_1.score - 1 != 0
      puts "Yes, you are correct!"
      player_turn.switch(2)
      puts "---New Turn---"
    elsif player_turn.turn == 1 && answer.to_i != real_answer && player_1.score - 1 != 0
      puts "Seriously? No!"
      player_turn.switch(2)
      player_1.subtract(1)
      puts "---New Turn---"
    elsif player_turn.turn == 1 && answer.to_i != real_answer && player_1.score - 1 == 0
      puts "Player2 wins with a score of #{player_2.score}/3"
      puts "Gameover"
      puts "Good Bye!"
      exit(0)
    elsif player_turn.turn == 2 && answer.to_i == real_answer && player_2.score - 1 != 0
      puts "Yes, you are correct!"
      player_turn.switch(1)
      puts "---New Turn---"
    elsif player_turn.turn == 2 && answer.to_i != real_answer && player_2.score - 1 != 0
      puts "Seriously? No!"
      player_turn.switch(1)
      player_2.subtract(1)
      puts "---New Turn---"
    elsif player_turn.turn == 2 && answer.to_i != real_answer && player_2.score - 1 == 0
      puts "Player1 wins with a score of #{player_1.score}/3"
      puts "Gameover"
      puts "Good Bye!"
      exit(0)
    end
  end
end


start




  
