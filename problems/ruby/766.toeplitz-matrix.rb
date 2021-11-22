#
# @lc app=leetcode id=766 lang=ruby
#
# [766] Toeplitz Matrix
#

# @lc code=start
# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  matrix.each_with_index do |n,i|
    next if i + 1 >= matrix.length
    n.each_with_index do |x,j|
      next if j + 1 >= n.length
      return false if x != matrix[i+1][j+1]
    end
  end
  return true
end
# @lc code=end

