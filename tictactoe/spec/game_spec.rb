require 'game'
game = Game.new

describe 'Game class' do

 

  it 'checks for a winner by row' do
    row_win = ['X', 'X', 'X', 4, 5, 6, 7, 8, 9]
    game.check_for_row_win(row_win).should == true
  end

  it 'checks for a winner by row' do
    row_win = [ 1, 2, 3, 4, 5, 6, 'O', 'O', 'O']
    game.check_for_row_win(row_win).should == true
  end 

  it 'checks for a winner by row' do
    row_win = [ 1, 2, 3, 'O', 'X', 'O', 7, 8, 9 ]
    game.check_for_row_win(row_win).should == false
  end  
    
  it 'checks for a winner by column' do
    row_win = ['X', 2, 3, 'X', 4, 5, 6, 'X', 8, 9 ]
    game.check_for_column_win(row_win).should == true
  end

  it 'checks for a winner by column' do
    column_win = [ 1, 2, 'O', 4, 5, 'O', 6, 7, 'O']
    game.check_for_column_win(column_win).should == true
  end

  it 'checks for a winner by column' do
    column_win = [ 1, 2, 3, 4, 5, 'X', 6, 7, 'X']
    game.check_for_column_win(column_win).should == false
  end

  it 'checks for a winner by diagonal' do
    diag_win = [ 'X', 2, 3, 4, 'X', 6, 7, 8, 'X' ]
    game.check_for_diag_win(diag_win).should == true
  end

  it 'checks for a winner by diagonal' do
    diag_win = [ 'O', 2, 3, 4, 'O', 'X', 'X', 8, 'X' ]
    game.check_for_diag_win(diag_win).should == false
  end

  it 'checks for a winner by diagonal' do
    diag_win = [1, 2, 'X', 4, 'X', 6, 'X', 8, 9]
    game.check_for_diag_win(diag_win).should == true 
  end
  it 'checks for a tie' do
    tie_game = [ 'X', 'X', 'O', 'O', 'O', 'X', 'X', 'X', 'O']
    game.check_for_tie(tie_game).should == true
  end

  it 'decides winner' do
    xwinner = ['X', 'X', 'X', 4, 5, 6, 7, 8, 9]
    player.decide_winner(xwinner).should == 'x'
    end 

end
   
