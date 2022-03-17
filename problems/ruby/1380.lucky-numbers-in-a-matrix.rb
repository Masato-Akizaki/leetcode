#
# @lc app=leetcode id=1380 lang=ruby
#
# [1380] Lucky Numbers in a Matrix
#

# @lc code=start
# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers(matrix)
    matrix.map{|row| row.min } & matrix.transpose.map{|col| col.max }
end
# @lc code=end