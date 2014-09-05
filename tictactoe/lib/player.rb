class Player

  def get_names
  puts "Who would like to be X? (name)"
  xplayer = $stdin.gets.chomp
  puts "Who would like to be Y? (name)"
  yplayer = $stdin.gets.chomp
  end

  
  def get_choice
  print_board
  puts "Please choose the spot on the board you would like to take "
  @choice = $stdin.gets.chomp.to_i
  end

  

  

  

#player chooses a number
#is prompted to choose the number of the corresponding place
#chooses number
#number is stored as choice variable
#choice needs to be an input variable that will change based on user's input at the time
# new class: game? check for winner and run script 



