require 'rainbow/refinement'
using Rainbow

class Modern
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end       
end

q1 = "Algeria gained its independence from what country in 1962?\n(a) Great Britain\n(b) France\n(c) Spain".blue
q2 = "How long did the Siege of Leningrad last until being broken in 1944?\n(a) 872 days\n(b) 341 days\n(c) 708 days"
q3 = "The first World Cup for Soccer (Football) was held in which country in 1930?\n(a) Uruguay\n(b) Italy\n(c) Brazil".blue
q4 = "Which celebrity was inducted into the US army in 1958?\n(a) Muhammad Ali\n(b) Stanley Kubrick\n(c) Elvis Presley"
q5 = "In what year did Russia form the Union of Soviet Socialist Republics (USSR)?\n(a) 1938\n(b) 1922\n(c) 1918".blue
q6 = " In what year was the Hubble Space Telescope put into operation?\n(a) 1969\n(b) 1978\n(c) 1988"
q7 = "The 1988 Winter Olympics were held where and in what country?\n(a) USA\n(b) Canada\n(c) France".blue
q8 = "In what year did Fidel Castro step down as the President of Cuba?\n(a) 2008\n(b) 2002\n(c) 1999"
q9 = "In 2006, Pluto was downgraded from a planet to what by the International Astronomical Union?\n(a) Satellite Planet\n(b) Dwarf Planet\n(c) Exoplanet".blue
q10 = "What trophy is awarded to the winner of the NHL playoffs\n(a) Vince Lombardi Trophy\n(b) Commissioner's Trophy\n(c) Stanley Cup"

 questions = [
    Modern.new(q1, "b"),
    Modern.new(q2, "a"),
    Modern.new(q3, "a"),
    Modern.new(q4, "c"),
    Modern.new(q5, "b"),
    Modern.new(q6, "c"),
    Modern.new(q7, "b"),
    Modern.new(q8, "a"),
    Modern.new(q9, "b"),
    Modern.new(q10, "c"), 
]
  def run_modern(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
            puts "Correct!".green
        else
            puts "Incorrect".red
        end  
  end 
  puts ("You scored " + score.to_s + "/" + questions.length().to_s)
end
run_modern(questions)