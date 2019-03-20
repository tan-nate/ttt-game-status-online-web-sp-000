require 'pry'

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
  WIN_COMBINATIONS.each do |win_combination|
    #binding.pry
    if win_combination.all? {|win_index| board[win_index] == "X"}
      binding.pry
      win_combination
    elsif win_combination.all? {|win_index| board[win_index] == "O"}
      win_combination
    else
      false
    end
  end
end