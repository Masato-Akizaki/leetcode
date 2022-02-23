#
# @lc app=leetcode id=1275 lang=ruby
#
# [1275] Find Winner on a Tic Tac Toe Game
#

# @lc code=start
# @param {Integer[][]} moves
# @return {String}
def tictactoe(moves)
  a_moves = []
  b_moves = []
  winning_conditions = [
      [[0,0],[0,1],[0,2]],
      [[1,0],[1,1],[1,2]],
      [[2,0],[2,1],[2,2]],
      [[0,0],[1,0],[2,0]],
      [[0,1],[1,1],[2,1]],
      [[0,2],[1,2],[2,2]],
      [[0,0],[1,1],[2,2]],
      [[0,2],[1,1],[2,0]]
  ]

  moves.each_with_index do |move, index|
      if index % 2 == 0
          a_moves << move
      else
          b_moves << move
      end
  end
  
  winning_conditions.each do |wc|
      if (wc & a_moves).size == 3
          return "A"
      elsif (wc & b_moves).size == 3
          return "B"
      end
  end
  return moves.size == 9 ? "Draw" : "Pending" 
end
# @lc code=end