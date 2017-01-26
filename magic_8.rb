require 'pry'

@answer = ['yes',
  'no',
  'maybe',
  'the future looks hopeful',
  'ask again',
  'the answer has always been within you' ]

def question
  puts 'welcome to the magic 8ball, would you like to enter your own answer, ask a question or type quit.?'
  input = gets.chomp
  if input == 'quit' || input == 'QUIT'
    puts exit_program
  elsif input == 'enter my own answer' || input == 'enter answer'
    enter_answer
  elsif input == 'clear' || input == 'clear answers' || input == 'reset'
    clearing
  elsif input == 'show answers' || input == 'show all answers'
   show_answers
  else
    ask_question
  end
end

def enter_answer
  puts 'enter an answer'
  input = gets.chomp
  @answer << input
end

def clearing
  puts 'answers reset'
  @answer =  @answer.slice(0,6)
end

def show_answers
  puts @answer

end

 def exit_program
   puts "goodbye"
   exit(0)
 end

 def ask_question
   puts 'what would you like to know?'
    input =gets.chomp
    puts  @answer.sample
 end

while true do
 question
end
