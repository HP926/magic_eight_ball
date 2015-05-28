require "pry-byebug"

class MagicEight

  def user_question
      puts "What's your question? or you may (q)uit."
      question = gets.chomp.downcase
    if question == "q"
    	puts "Goodbye."
      exit
    end
  end
# => end

  # binding.pry

	def initialize() 
		@answer_list = [
		"Yes, of course!", "No, never.", "I don't know.", "Maybe? We'll see."
		]
  end

  def choose_answer
  	sleep 0.5
  	puts @answer_list.sample(1)
  end

  def loop_game
  	sleep 0.5
    puts "Would you like to play again? y/n"
    answer = gets.chomp.downcase
    if answer == "y"
      user_question
      choose_answer
      loop_game
    elsif answer == "n"
    	puts "Goodbye"
    	exit
    end
  end

  def use
  	user_question
		choose_answer
		loop_game
	end
end 


clone = MagicEight.new
clone.use