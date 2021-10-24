#
# @lc app=leetcode id=657 lang=ruby
#
# [657] Robot Return to Origin
#

# @lc code=start
# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  x = moves.count('L') - moves.count('R')
  y = moves.count('U') - moves.count('D')
  return x == 0 && y == 0
end
# @lc code=end

