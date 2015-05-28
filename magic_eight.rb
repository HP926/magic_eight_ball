require "pry-byebug"

class MagicEight


  def user_question
      puts "What's your question? or (Q)uit"
      question = gets.chomp.upcase
    if question == "Q"
      exit
    end
  end
# => end

  # binding.pry

	def initialize() 
		@answer_list = [
		"Yes, of course!", "No, never.", "I don't know", "Maybe? You'll see."
		]
  end

  def choose_answer
  	sleep 0.5
  	puts @answer_list.sample(1)
  end

  def loop_question
    puts "Would you like to play again? y/n"
    answer = gets.chomp.downcase
    unless answer == "n"
      user_question
      choose_answer
    end
  end
end 
 

clone = MagicEight.new
clone.user_question
clone.choose_answer
clone.loop_question