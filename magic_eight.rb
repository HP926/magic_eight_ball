require "pry-byebug"

class MagicEight

  def user_question
    puts "What's your question?"
    user_question = gets.chomp
  end

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
end 
 

clone = MagicEight.new
clone.user_question
clone.choose_answer