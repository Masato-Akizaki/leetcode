#
# @lc app=leetcode id=2022 lang=ruby
#
# [2022] Convert 1D Array Into 2D Array
#

# @lc code=start
# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
    array = []
    return array if original.length != m * n
    original.each_slice(n){|v| array << v }
    array
end
# @lc code=end