#
# @lc app=leetcode id=867 lang=ruby
#
# [867] Transpose Matrix
#

# @lc code=start
# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
  transpose_matrix = Array.new(matrix[0].length).map{Array.new(0)}
  matrix.each do |row|
    row.each_with_index do |x, i|
      transpose_matrix[i] << x
    end
  end
  transpose_matrix
end
# @lc code=end

