#
# @lc app=leetcode id=1582 lang=ruby
#
# [1582] Special Positions in a Binary Matrix
#

# @lc code=start
# @param {Integer[][]} mat
# @return {Integer}
def num_special(mat)
    transpose_mat = mat.transpose
    count = 0
    mat.each do |row|
        count += 1 if row.sum == 1 && transpose_mat[row.index(1)].sum == 1
    end
    count
end
# @lc code=end