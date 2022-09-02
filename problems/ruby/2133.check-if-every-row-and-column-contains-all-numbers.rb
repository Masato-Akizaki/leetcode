#
# @lc app=leetcode id=2133 lang=ruby
#
# [2133] Check if Every Row and Column Contains All Numbers
#

# @lc code=start
# @param {Integer[][]} matrix
# @return {Boolean}
def check_valid(matrix)
    (matrix + matrix.transpose).all?{|x| x.uniq.length == matrix.length}
end
# @lc code=end