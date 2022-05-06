#
# @lc app=leetcode id=1572 lang=ruby
#
# [1572] Matrix Diagonal Sum
#

# @lc code=start
# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
    sum = 0
    center_index = mat.length / 2 if mat.length.odd?
    mat.each_with_index do |r, i|
        sum += r[i] + r[-1-i]
        sum -= r[i] if center_index && center_index == i
    end
    sum
end
# @lc code=end