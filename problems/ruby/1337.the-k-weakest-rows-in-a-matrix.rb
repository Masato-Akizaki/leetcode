#
# @lc app=leetcode id=1337 lang=ruby
#
# [1337] The K Weakest Rows in a Matrix
#

# @lc code=start
# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
    hash = Hash.new()
    mat.each_with_index do |row, i|
        hash[i] = row.count(1)
    end
    hash.sort_by{ |_, v| v }.to_h.keys[0..k-1]
end
# @lc code=end