class GameStart
    def self.start
        new_game = GameStart.new
    end
end

# class Player
#     attr_accessor :lives, :right_answer, :wrong_answer
    
#     def initialize
#         @lives = 3
#     end

#     def right_answer
#         puts "YES! You are correct."
#     end

#     def wrong_answer
#         @lives -= 1
#         puts "Seriously? No!"
#     end
# end

class MainGame
    lives = 3;
    while (lives > 0)
        number_one = rand(1..20)
        number_two = rand(1..20)
        correct_answer = number_one + number_two
        puts "What does #{number_one} + #{number_two} equal?"
        print "> "
        answer = $stdin.gets.chomp.to_i

        if answer == correct_answer
            puts "YES! You are correct."
        else
            lives -= 1
            puts "Seriously? No!"
        end
    end
end

class GameOver
    puts "#{Player} wins with a score of #{Player.lives}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
end

GameStart.start