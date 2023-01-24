class Mathgame
                                    def begin
                                      make_guess
                                    end
                                    def initialize
                                      @lives = 3
                                      @p2lives = 3
                                      @first_guess = 2
                                    end

                        def make_guess
                          @first_guess -= 1
                          if @lives > 0   
                            if @first_guess === 1
                              puts "----- BEGIN GAME -----"
                            else
                              puts "----- NEXT QUESTION -----"
                            end
                            q1 = rand(50)
                            q2 = rand(50)
                            question = "PLAYER 1, What is #{q1} + #{q2}?"
                            puts "#{question}"
                            correct_guess = q1 + q2
                            puts "DEBUGGING, the correct answer will be #{correct_guess}"
                            guess = gets.chomp.to_i
                            puts "You guessed #{guess} "
                              if correct_guess === guess
                                puts "Correct! #{correct_guess} is the answer we wanted."
                                make_guess
                              else 
                                @lives -= 1
                                puts "Incorrect! You guessed #{guess} and the correct answer is #{correct_guess}. You have lost a life. You now have #{@lives} lives remaining"
                                make_guess
                              end
                          else
                            puts "----- GAME OVER -----"
                            exit
                          end
                        end

end
        game = Mathgame.new
        game.begin





# def make_guess_p2
#   if @p2lives > 0
#     q1player2 = rand(50)
#     q2player2 = rand(50)
#     questionPlayer2 = "PLAYER 2, What is #{q1player2} + #{q2player2}?"
#     puts "#{questionPlayer2}"
#     correct_guess_p2 = q1player2 + q2player2
#     puts "DEBUGGING, the correct answer will be #{correct_guess_p2}"
#     guessp2 = gets.chomp.to_i
#     puts "You guessed #{guessp2}"
#     if correct_guess_p2 === guessp2
#       puts "Correct! #{correct_guess_p2} is the answer we wanted."
#       @make_guess
#     else
#       @p2lives -= 1
#       puts "Incorrect! You guessed #{guessp2} and the correct answer is #{correct_guess_p2}. You have lost a life. You now have #{@p2lives} lives remaining"
#       @make_guess
#     end
#   else
#     puts "----- GAME OVER -----"
# end