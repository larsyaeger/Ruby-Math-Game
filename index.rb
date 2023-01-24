class Mathgame
  def begin
    make_guess
  end
  def initialize
    @lives = 3
    @p2lives = 3
    @first_guess = 2
    @playerToggle = 1 #if this is 1 then its p1 mode, if 2 then its p2 mode
  end

  def make_guess
    if @playerToggle == 1
      @first_guess -= 1
      if @lives > 0   
        if @first_guess === 1
          puts " ----   BEGIN GAME   ---- "
          puts "----- PLAYER 1's TURN -----"
        else
          puts "----- PLAYER 1's TURN -----"
        end
        q1 = rand(50)
        q2 = rand(50)
        question = "PLAYER 1, What is #{q1} + #{q2}?"
        puts "#{question}"
        correct_guess = q1 + q2
        # puts "DEBUGGING, the correct answer will be #{correct_guess}"
        guess = gets.chomp.to_i
        # puts "You guessed #{guess} "
          if correct_guess === guess
            puts "Correct! #{correct_guess} is the answer we wanted."
            @playerToggle += 1
            make_guess
          else 
            @lives -= 1
            if @lives > 0
              puts "Incorrect! Player 1 now only has #{@lives} lives remaining."
            else
              puts "----- GAME OVER, PLAYER 1 LOSES -----"
              exit
            end
            @playerToggle += 1
            if @lives > 0
              make_guess
            else
              puts "----- GAME OVER, PLAYER 1 LOSES -----"
              exit
            end
          end
      else
        puts "----- GAME OVER, PLAYER 1 LOSES -----"
        exit
      end
    elsif @playerToggle == 2
      puts "----- PLAYER 2's TURN -----"
      if @p2lives > 0

        player2q1 = rand(50)
        player2q2 = rand(50)
        player2Question = "PLAYER 2, What is #{player2q1} + #{player2q2}?"
        puts "#{player2Question}"
        player2_correct_guess = player2q1 + player2q2
        # puts "DEBUGGING, the correct answer will be #{player2_correct_guess}"
        player2_guess = gets.chomp.to_i
        # puts "You guessed #{player2_guess}"

        if player2_correct_guess === player2_guess
          puts "Correct! #{player2_correct_guess} is the answer we wanted."
          @playerToggle -= 1
          make_guess
        else
          @p2lives -= 1
          if @p2lives > 0
            puts "Incorrect! Player 2 now only has #{@p2lives} lives remaining"
          else
            puts "----- GAME OVER, PLAYER 2 LOSES -----"
            exit
          end
          @playerToggle -= 1
          if @p2lives > 0
            make_guess
          else
            puts "----- GAME OVER, PLAYER 2 LOSES -----"
            exit
          end
        end

      else ##this is the else for the if p2Lives > 0
        puts "----- GAME OVER, PLAYER 2 LOSES -----"
        exit
      end ##this is the end for the if else p2 lives
      

    end #THIS END CONNECTS TO THE ELSIF
  end #THIS END CONNECTS TO THE DEF MAKE_GUESS

end #THIS END CONNECTS TO THE CLASS
        game = Mathgame.new
        game.begin
