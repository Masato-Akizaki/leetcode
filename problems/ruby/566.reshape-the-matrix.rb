#
# @lc app=leetcode id=566 lang=ruby
#
# [566] Reshape the Matrix
#

# @lc code=start
# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  return mat if mat.flatten.length != r * c
  mat.flatten.each_slice(c).to_a
end
# @lc code=end

