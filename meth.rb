
require 'tty-prompt'


#main menu return
def main_menu(main_user)
    self.line_break
    puts "Please select a command".colorize(:light_blue), "1: Return to Main Menu".colorize(:cyan), "2: Exit".colorize(:cyan)
    self.line_break
input = gets.chomp
until input == "1" || input == "2"
    puts "Invalid response. Please select a command:".colorize(:light_blue), "1: Return to Main Menu".colorize(:cyan), "2: Exit".colorize(:cyan)
input = gets.chomp 
end

if input == "1"
    self.user_task(main_user)
elsif input == "2"
    puts "Have a great day!".colorize(:light_green) 
 end 
end       

