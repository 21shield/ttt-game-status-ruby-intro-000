# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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
WIN_COMBINATIONS.each do |wining_array|
  wining_array.each do |wining_idx|
      board_idx = board.select do |curr_el|
    position_taken?(board, wining_idx)== true && board[wining_idx] == "X"
    return board_idx
    end
  end
end
end
