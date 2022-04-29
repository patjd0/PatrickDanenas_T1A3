require 'rainbow/refinement'
using Rainbow

class Ancient
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end       
end

q1 = "Which country is famous for its amazing terracotta army?\n(a) Cambodia\n(b) China\n(c) Mongolia".blue
q2 = "Which one of the Ancient Seven Wonders of the world still exists?\n(a) The Great Pyramids\n(b) The Great Wall of China\n(c) The Lighthouse of Alexandria"
q3 = "The Mayans were the only ancient society in the area of Latin America that accomplished which feat?\n(a) Writing\n(b) Sailing\n(c) Metallurgy".blue
q4 = "How was the ancient Roman city of Pompeii destroyed?\n(a) War\n(b) Flood\n(c) Volcano"
q5 = "Who first invented writing?\n(a) Sumerians\n(b) Egyptians\n(c) Babylonians".blue
q6 = "Most ancient Egyptians drank this beverage made of grain and dates. What was it?\n(a) Wine\n(b) Gin\n(c) Beer"
q7 = "One of the fierce adversaries of Rome crossed the Alps with 37 elephants. Who was this general?\n(a) Caesar\n(b) Hannibal\n(c) Attila".blue
q8 = "Who was the king who not only united Greece but also conquered the archenemy Persia?\n(a) Leonidas I\n(b) Alexander the Great\n(c) Aristotle"
q9 = "Which metal is associated with the end of the Stone Age?\n(a) Bronze\n(b) Copper\n(c) Iron".blue
q10 = "The construction of Stonehenge was begun around 2400 BC. How much do some of the stones weigh?\n(a) 6 Tons\n(b) 15 Tons\n(c) 40 Tons"

 questions = [
    Ancient.new(q1, "b"),
    Ancient.new(q2, "a"),
    Ancient.new(q3, "a"),
    Ancient.new(q4, "c"),
    Ancient.new(q5, "a"),
    Ancient.new(q6, "c"),
    Ancient.new(q7, "b"),
    Ancient.new(q8, "b"),
    Ancient.new(q9, "a"),
    Ancient.new(q10, "c"), 
]
  def run_ancient(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
            puts "Correct!".green
        else
            puts "Incorrect.".red    
        end  
  end 
  puts ("You scored " + score.to_s + "/" + questions.length().to_s)
end
run_ancient(questions)