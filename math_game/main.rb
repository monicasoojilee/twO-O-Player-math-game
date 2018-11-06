class Player
    attr_accessor :lives
    def initialize
        @lives = 3
    end
end

class MainGame
    player = []
    player1 = Player.new
    player2 = Player.new
    players = [player1, player2]
    current_player = 0

    while players[current_player].lives > 0
        number_one = rand(1..20)
        number_two = rand(1..20)
        correct_answer = number_one + number_two   

        puts "#{players[current_player]}'s turn!"
        puts "What does #{number_one} + #{number_two} equal?"
        print "> "
        answer = $stdin.gets.chomp.to_i

        if players[current_player].lives > 0
            if answer == correct_answer
                puts "YES! You are correct."
                puts players[current_player].lives
                current_player = (current_player + 1) % 2
            else
                players[current_player].lives -= 1
                puts players[current_player].lives
                puts "Seriously? No!"
                current_player = (current_player + 1) % 2
            end
        end

        if players[current_player].lives == 0
            puts "----- GAME OVER -----"
            puts "#{players[(current_player + 1) % 2]} wins with a score of #{players[(current_player + 1) % 2].lives} / 3"
            puts "Thank you for playing!"
        end
    end
end