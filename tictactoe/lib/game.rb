class Game

  def current_player(n)
    @current_player = n
  end
  
  def decide_first_player 
  #chooses xplayer or yplayer to go first
  var = rand(2)
  if var == 1
    puts "#{xplayer}, you go first" 
    current_player(x)
  else
    puts "#{yplayer}, you go first"
    current_player(y)
  end
  end

  def switch_player
    if @current_player = x
      current_player(y)
    else
      current_player(x)
    end
  end

  def check_for_win
  # a method that will evaluate to false as long as there is no winner
  if ||
  end

  get_names
  decide_first_player
  while check_for_win == False
  get_choice
  if @current_player = x
    add_x_board(choice)
  else
    add_y_board(choice)
  switch_player

  




#ask for names (get_names)
#decide if x or y will go first
#ask for the first response (Choice)
#add response to board)
#check for win
#ask for the next response (other player)
#add other response to board
#check for win


end
