require 'pry'

#board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  #binding.pry
  winning_combo = WIN_COMBINATIONS.select do |win_combination|
    #binding.pry
    win_combination.all? {|win_index| board[win_index] == "X"} ||
    win_combination.all? {|win_index| board[win_index] == "O"}
  end
  if winning_combo = []
    false
  end
  winning_combo
end

#binding.pry