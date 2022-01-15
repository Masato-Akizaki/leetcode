#
# @lc app=leetcode id=999 lang=ruby
#
# [999] Available Captures for Rook
#

# @lc code=start
# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
  rook = []
  attacking = 0
  board.each_with_index do |row, i|
    rook = [i, row.index("R")] if row.include?("R")
  end

  attacking += 1 if board[rook[0]][0..rook[1]-1].delete_if{|x| x == "."}.last == "p" && rook[1] != 0
  attacking += 1 if board[rook[0]][rook[1]+1..-1].delete_if{|x| x == "."}.first == "p" && rook[1] != 7
  attacking += 1 if board.transpose[rook[1]][0..rook[0]-1].delete_if{|x| x == "."}.last == "p" && rook[0] != 0
  attacking += 1 if board.transpose[rook[1]][rook[0]+1..-1].delete_if{|x| x == "."}.first == "p" && rook[0] != 7
  
  return attacking
end
# @lc code=end

