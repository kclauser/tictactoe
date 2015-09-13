@win_conditions = [
  [1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[7,5,3]
]
@board = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
@turns = 0

def board
  puts "#{@board[1]} | #{@board[2]} | #{@board[3]}"
  puts "--+---+--"
  puts "#{@board[4]} | #{@board[5]} | #{@board[6]}"
  puts "--+---+--"
  puts "#{@board[7]} | #{@board[8]} | #{@board[9]}"
end

def win?
  if
    @win_conditions.any? { |win_condition| win_condition.all? { |position| @board[position] == @player_choice}}
    puts "someone won"
    exit
  end
end

def draw?
  if @turns == 9
    puts "cats game"
    exit
  end
end

def invalid_move1
  if @board[@player_1_choice] == "X" || @board[@player_1_choice] == "0"
    puts "that spot is already taken"
    player_1_turn
  end
end

def invalid_move2
  if @board[@player_2_choice] == "X" || @board[@player_2_choice] == "0"
    puts "that spot is already taken"
    player_2_turn
  end
end

def player_1_turn
  puts "Player_1 make your move"
  @player_1_choice = gets.chomp.to_i
  @board[@player_1_choice] = "X" unless invalid_move1
  @player_choice = "X"
  @turns += 1
  win?
  draw?
  board
end

def player_2_turn
  puts "Player_2 make your move"
  @player_2_choice = gets.chomp.to_i
  @board[@player_2_choice] = "0" unless invalid_move2
  @turns += 1
  win?
  draw?
  board
end

puts "Prompt game begin"
puts "Player 1 enter name"
player_1 = gets.chomp

puts "Player 2 enter name"
player_2 = gets.chomp

  loop do
    player_1_turn


    player_2_turn

end




#
# puts player_1, player_2
# board
