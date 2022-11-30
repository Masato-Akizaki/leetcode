#
# @lc app=leetcode id=36 lang=ruby
#
# [36] Valid Sudoku
#

# @lc code=start
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  return false if board.any?{|x| (x - ["."]).count != (x - ["."]).uniq.count } 
  return false if board.transpose.any?{|x| (x - ["."]).count != (x - ["."]).uniq.count } 
  [0,3,6].each do |i|
      [0,3,6].each do |j|
          subbox = board[i..i+2].map{|r| r[j..j+2]}.flatten
          return false if (subbox - ["."]).count != (subbox - ["."]).uniq.count
      end
  end
  true
end
# @lc code=end

