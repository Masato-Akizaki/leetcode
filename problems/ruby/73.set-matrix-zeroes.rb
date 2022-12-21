#
# @lc app=leetcode id=73 lang=ruby
#
# [73] Set Matrix Zeroes
#

# @lc code=start
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  idxs = []
    matrix.each do |m|
        idxs << m.each_index.select { |i| m[i] == 0 }
    end
    idxs.each_with_index do |idx_arr, i|
        idx_arr.each do |j|
            matrix[i].map!{0}
            matrix.each_with_index do |m, k|
                next if k == i
                m[j] = 0
            end
        end
    end
end
# @lc code=end

