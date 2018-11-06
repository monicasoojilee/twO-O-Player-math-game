class Player
    attr_accessor :lives, :name
    def initialize(name)
        @lives = 3
        @name = name
    end
end

class MainGame
# INSTANTIATE FROM PLAYER CLASS
    player1 = Player.new("Player 1")
    player2 = Player.new("Player 2")

# TURN-BASED ROTATION VIA ARRAY INDEX MANIPULATION
    players = [player1, player2]
    current_player = 0

    # MAIN GAME
    while players[current_player].lives > 0
        
        #QUESTION && PLAYER PROMPT
        number_one = rand(1..20)
        number_two = rand(1..20)
        correct_answer = number_one + number_two   

        puts "#{players[current_player].name}'s turn!"
        puts "What does #{number_one} + #{number_two} equal?"
        print "> "
        answer = $stdin.gets.chomp.to_i
        current_player = (current_player + 1) % 2

        if answer == correct_answer
            puts "YES! You are correct."
        else
            players[current_player].lives -= 1
            if players[current_player].lives == 0
                puts "----- GAME OVER -----"
                puts "#{players[(current_player + 1) % 2].name} wins with a score of #{players[(current_player + 1) % 2].lives} / 3"
                puts "Thank you for playing!"
            else 
                puts "Seriously? No!"
            end
        end
    end
end